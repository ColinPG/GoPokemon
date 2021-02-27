using NUnit.Framework;
using OpenQA.Selenium;

namespace GoPokemonTests
{
    public class IdentityTests : DriverTest
    {
        protected const string loginUrl = "Identity/Account/Login";
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

        private void Login()
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