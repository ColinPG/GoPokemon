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
        protected const string loginUrl = "Identity/Account/Login";
        protected const string MyCardsURL = "Cards/MyCards";
        protected IWebDriver driver;

        [SetUp]
        public void Setup()
        {
            driver = new ChromeDriver();
        }

        protected void Login()
        {
            driver.Navigate().GoToUrl(homeURL + loginUrl);
            //Accept cookies, if not accepted already.
            try
            {
                IWebElement cookiesLink = driver.FindElement(By.ClassName("accept-policy"));
                cookiesLink.Click();
            }
            catch { }

            //Input_UserName
            IWebElement usernameTextbox = driver.FindElement(By.Id("Input_Email"));
            usernameTextbox.SendKeys(testUsername);
            //Input_Password
            IWebElement passwordTextbox = driver.FindElement(By.Id("Input_Password"));
            passwordTextbox.SendKeys(testPassword);
            usernameTextbox.Submit();
        }

        [TearDown]
        public virtual void TearDown()
        {
            driver.Close();
        }
    }
}
