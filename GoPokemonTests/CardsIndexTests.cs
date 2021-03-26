using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemonTests
{
    class CardsIndexTests : DriverTest
    {
        private string CardIndexURL;

        public CardsIndexTests()
        {
            CardIndexURL = "Cards/CardIndex";
        }

        [Test]
        public void CardIndexPage_NavigateToCardIndexPage_URLisCardIndexPage()
        {
            driver.Navigate().GoToUrl(homeURL + CardIndexURL);
            Assert.AreEqual(driver.Url, homeURL + CardIndexURL);
        }
    }
}
