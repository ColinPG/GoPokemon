using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace GoPokemon.Areas.Cards
{
    public class ScannedCardsModel : PageModel
    {
        [BindProperty]
        public List<Card> Cards { get; set; }
        public CardsIndexModel(GoPokemonContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> OnGetAsync()
        {
            Cards = await _context.Cards.Include(a => a.Set).OrderBy(a => a.CollectionNumber).ToListAsync();
            return Page();
        }
    }
}
