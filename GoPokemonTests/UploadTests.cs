using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemonTests
{
    class UploadTests : DriverTest
    {
        protected const string uploadURL = "Cards/UploadCard";
        private string resultURL = "Cards/ResultCard";
        private const string testImageFilePath = "C:/Users/justi/Desktop/NerPokemonCardPics/Train/Monster/1.jpg";

        [Test]
        public void UploadPage_NavigateToUploadPageAsUser_URLisUploadPage()
        {
            Login();
            driver.Navigate().GoToUrl(homeURL + uploadURL);
            Assert.AreEqual(driver.Url, homeURL + uploadURL);
        }

        [Test]
        public void UploadPage_NavigateToUploadPageNotLoggedIn_AccessDenied()
        {
            driver.Navigate().GoToUrl(homeURL + uploadURL);
            Assert.AreNotEqual(driver.Url, homeURL + uploadURL);
        }

        [Test]
        public void UploadPage_UploadOneCard_CardIsCreated()
        {
            Login();
            UploadCard(driver, 1);
            Assert.AreEqual(driver.Url, homeURL + resultURL);
        }

        [Test]
        public void UploadPage_UploadMultipleCards_MultipleCardsCreated()
        {
            Login();
            UploadCard(driver, 3);
            Assert.AreEqual(driver.Url, homeURL + resultURL);
        }

        public static void UploadCard(IWebDriver driver, int quantity, string cardName = "Alakazam")
        {
            driver.Navigate().GoToUrl(homeURL + uploadURL);
            //Insert Card data
            IWebElement cardImageUpload = driver.FindElement(By.Id("CardImage"));
            cardImageUpload.SendKeys(testImageFilePath);
            SelectElement cardNameDropDown = new SelectElement(driver.FindElement(By.Id("Input_CardName")));
            cardNameDropDown.SelectByText(cardName);
            SelectElement quantityDropDown = new SelectElement(driver.FindElement(By.Id("Input_Quantity")));
            quantityDropDown.SelectByText(quantity.ToString());
            IWebElement submitButton = driver.FindElement(By.Id("submit"));
            submitButton.Click();
        }
    }
}
