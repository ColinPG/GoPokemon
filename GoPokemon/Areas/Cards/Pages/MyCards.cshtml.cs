using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GoPokemon.Models;
using Microsoft.AspNetCore.Identity;

namespace GoPokemon.Areas.Cards
{
    public class MyCardsIndexModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;
        private GoPokemonContext _context;
        //[BindProperty]
        //public List<Card> Cards { get; set; }
        [BindProperty]
        public List<UserCard> userCards { get; set; }
        public MyCardsIndexModel(UserManager<IdentityUser> userManager, GoPokemonContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        public async Task<IActionResult> OnGetAsync()
        {
            var user = await _userManager.GetUserAsync(User);
            userCards = await _context.UserCards.Include(a => a.Condition).Include(a => a.Card).ToListAsync();
            //Cards = await _context.Cards.Include(a => a.Set).OrderBy(a => a.CollectionNumber).ToListAsync();
            //Cards = await _context.Cards.Include(a => a.Set).OrderBy(a => a.CollectionNumber).ToListAsync();
            return Page();
        }
        public async Task<IActionResult> OnPostAsync(string conditionId, string cardId)
        {
            //Remove Card
            var user = await _userManager.GetUserAsync(User);
            var userCard = _context.UserCards
                .Where(a => a.ConditionId == conditionId)
                .Where(a => a.CardId == cardId)
                .Where(a => a.UserId == user.Id)
                .FirstOrDefault();
            if(userCard != null)
            {
                // Remove from db
                _context.UserCards.Remove(userCard);
                await _context.SaveChangesAsync();
            }
            else
            {
                // Card isn't found, return with error and no changes to db
                TempData["message"] = "Card not found.";
            }
            userCards = await _context.UserCards.Include(a => a.Condition).Include(a => a.Card).ToListAsync();
            return Page();
        }
    }
}
