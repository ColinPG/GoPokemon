using GoPokemon.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemon.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private GoPokemonContext _context;

        public HomeController(ILogger<HomeController> logger, GoPokemonContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public FileResult DownloadFile(string id)
        {
            List<UserCard> userCards = _context.UserCards.Where(a => a.UserId == id)
                .Include(a => a.Condition)
                .Include(a => a.Card)
                .Include(a => a.Card.Set).ToList();
            string result = "CardName, SetName, CollectionNumber, Condition, FirstEdition, Quantity, Value\n";
            for (int i = 0; i < userCards.Count; i++)
            {
                //Card Name, SetName, ColNum, Condition, isFirstEdition, Quantity, Value
                var line = string.Format("{0},{1},{2},{3},{4},{5},{6}",
                    userCards[i].Card.Name,
                    userCards[i].Card.Set.Name,
                    userCards[i].Card.CollectionNumber,
                    userCards[i].Condition.Name,
                    userCards[i].Card.IsFirstEdition.ToString(),
                    userCards[i].Quantity,
                    userCards[i].Card.Value);
                result += line + "\n";
            }
            byte[] fileContents = Encoding.ASCII.GetBytes(result);
            return File(fileContents, "text/plain", $"Collection.csv");
        }
    }
}
