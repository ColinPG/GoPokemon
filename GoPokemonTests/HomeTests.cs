using NUnit.Framework;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemonTests
{
    class HomeTests : DriverTest
    {
        [Test]
        public void HomeController_NavigateToHomePage_URLisHomePage()
        {
            driver.Navigate().GoToUrl(homeURL);
            Assert.AreEqual(driver.Url, homeURL);
        }
    }
}
