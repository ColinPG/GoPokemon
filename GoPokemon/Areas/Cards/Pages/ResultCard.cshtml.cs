using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace GoPokemon.Areas.Cards
{
    [Authorize]
    public class ResultCardModel : PageModel
    {
        public void OnGet()
        {
        }
    }
}
