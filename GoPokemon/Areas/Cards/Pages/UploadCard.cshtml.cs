using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using GoPokemon.Models;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

namespace GoPokemon.Areas.Cards.Views
{
    [Authorize]
    public class UploadCardModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;
        [BindProperty]
        public IFormFile CardImage { get; set; }
        [BindProperty]
        public InputModel Input { get; set; }
        private readonly IWebHostEnvironment _hostEnvironment;

        public UploadCardModel(
            UserManager<IdentityUser> userManager, IWebHostEnvironment hostEnvironment, GoPokemonContext context)
        {
            _userManager = userManager;
            _hostEnvironment = hostEnvironment;
            _context = context;
        }
        public class InputModel
        {
            [Display(Name = "Card Name")]
            public string CardName { get; set; }
            [Display(Name = "Quantity")]
            public int Quantity { get; set; }
            [Display(Name = "Condition")]
            public int Condition { get; set; }
        }

        private GoPokemonContext _context;
        [BindProperty]
        public List<Card> Cards { get; set; }

        public async Task<IActionResult> OnGetAsync()
        {
            Cards = await _context.Cards.Include(a => a.Set).OrderBy(a => a.CollectionNumber).ToListAsync();
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (CardImage == null)
                ModelState.AddModelError("CardImage", "No image selected.");
            if  (ModelState.IsValid)
            {
                string cardName = Input.CardName;
                int quantity = Input.Quantity;
                int condition = Input.Condition;

                string wwwRootPath = _hostEnvironment.WebRootPath;
                string fileName = Path.GetFileNameWithoutExtension(CardImage.FileName);
                string extension = Path.GetExtension(CardImage.FileName);
                string imageName = fileName + DateTime.Now.ToString("yy_mm_ss_fff") + extension;
                string path = Path.Combine(wwwRootPath + "/CardImages/", imageName);
                using (var fileStream = new FileStream(path, FileMode.Create))
                {
                    await CardImage.CopyToAsync(fileStream);
                }
                // Create a new usercard if no usercard exists
                var user = await _userManager.GetUserAsync(User);
                Card card = _context.Cards.Where(a => a.Name == Input.CardName).First();
                var isInUserCards = _context.UserCards.Where(a => a.CardId == card.Id && a.UserId == user.Id).Any();
                // blank UserCard
                UserCard newCard;
                if (!isInUserCards)
                {
                    newCard = new UserCard
                    {
                        UserId = user.Id,
                        CardId = card.Id,
                        Quantity = quantity,
                        DateCreated = DateTime.Now,
                        ConditionId = condition.ToString()
                    };
                    _context.UserCards.Add(newCard);
                }
                else
                {
                    newCard =  _context.UserCards.Where(a => a.CardId == card.Id && a.UserId == user.Id).First();
                    _context.UserCards.Update(newCard);
                    //newCard.Quantity+= Quantity;
                }
                _context.SaveChanges();

                TempData["imageKey"] = imageName;
                return RedirectToPage("ResultCard");

            }
            return Page();
        }
    }
}
