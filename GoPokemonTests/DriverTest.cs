using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemonTests
{
    public class DriverTest
    {
        protected const string testUsername = "TestMember1@test.com";
        protected const string testPassword = "aA!123";
        protected const string homeURL = "https://localhost:44390/";
        protected IWebDriver driver;

        [SetUp]
        public void Setup()
        {
            driver = new ChromeDriver();
        }

        [TearDown]
        public virtual void TearDown()
        {
            driver.Close();
        }
    }
}
