using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace GoPokemon.Areas.Cards.Views
{
    public class UploadCardModel : PageModel
    {
        [BindProperty]
        public IFormFile CardImage { get; set; }

        private readonly IWebHostEnvironment _hostEnvironment;

        public UploadCardModel(IWebHostEnvironment hostEnvironment)
        {
            _hostEnvironment = hostEnvironment;
        }

        public void OnGet()
        {
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (CardImage == null)
                ModelState.AddModelError("CardImage", "No image selected.");
            if(ModelState.IsValid)
            {
                string wwwRootPath = _hostEnvironment.WebRootPath;
                string fileName = Path.GetFileNameWithoutExtension(CardImage.FileName);
                string extension = Path.GetExtension(CardImage.FileName);
                string imageName = fileName + DateTime.Now.ToString("yy_mm_ss_fff") + extension;
                string path = Path.Combine(wwwRootPath + "/CardImages/", imageName);
                using (var fileStream = new FileStream(path, FileMode.Create))
                {
                    await CardImage.CopyToAsync(fileStream);
                }
                TempData["imageKey"] = imageName;
                return RedirectToPage("ResultCard");
            }
            return Page();
        }
    }
}
