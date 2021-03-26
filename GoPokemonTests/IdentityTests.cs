using NUnit.Framework;
using OpenQA.Selenium;

namespace GoPokemonTests
{
    public class IdentityTests : DriverTest
    {
        protected const string profileUrl = "Identity/Account/Manage";

        public IdentityTests()
        {
        }

        [Test]
        public void Identity_Login_LoggedIn()
        {
            //Login
            Login();
            //Return to home page
            driver.Navigate().GoToUrl(homeURL);
            IWebElement logoutLink = driver.FindElement(By.Id("Logout"));
            //If login succeeds, logoutlink will be present.
            Assert.IsNotNull(logoutLink);
        }


        [Test]
        public void Identity_Logout_LoggedOut()
        {
            Login();
            driver.Navigate().GoToUrl(homeURL);
            IWebElement logoutLink = driver.FindElement(By.Id("Logout"));
            logoutLink.Click();
            driver.Navigate().GoToUrl(homeURL);
            IWebElement loginLink = driver.FindElement(By.Id("Login"));
            //If login link exists, user sucesfully logged out
            Assert.IsNotNull(loginLink);
        }


        [Test]
        public void Identity_NavigateToProfile_URLisProfile()
        {
            Login();
            driver.Navigate().GoToUrl(homeURL + profileUrl);
            Assert.AreEqual(driver.Url, homeURL + profileUrl);
        }
    }
}