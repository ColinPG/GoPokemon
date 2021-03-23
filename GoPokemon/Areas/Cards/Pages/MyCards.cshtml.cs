using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GoPokemon.Models;

namespace GoPokemon.Areas.Cards
{
    public class MyCardsIndexModel : PageModel
    {
        private GoPokemonContext _context;
        [BindProperty]
        public List<Card> Cards { get; set; }
        public MyCardsIndexModel(GoPokemonContext context)
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
