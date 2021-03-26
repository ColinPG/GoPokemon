using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Interactions;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoPokemonTests
{
    class MyCardsTests : DriverTest
    {
        public MyCardsTests()
        {
        }

        [Test]
        public void MyCardsPage_NavigateToMyCardsAsUser_URLisMyCards()
        {
            Login();
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            Assert.AreEqual(driver.Url, homeURL + MyCardsURL);
        }

        [Test]
        public void MyCardsPage_NavigateToMyCardsNotLoggedIn_AccessDenied()
        {
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            Assert.AreNotEqual(driver.Url, homeURL + MyCardsURL);
        }

        [Test]
        public void MyCardsPage_LoadPageWithNoCards_NoCardsOnPage()
        {
            Login();
            RemoveAllCards();
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            try
            {
                IWebElement removeButton = driver.FindElement(By.Id("Remove"));
                removeButton.Click();
                //If we reached here without error, a remove link exists 
                Assert.Fail();
            }
            catch
            {
                //Succesfully didn't find any cards
                Assert.Pass();
            }
        }

        private void RemoveAllCards()
        {
            while (true)
            {
                driver.Navigate().GoToUrl(homeURL + MyCardsURL);
                try
                {
                    IWebElement removeButton = driver.FindElement(By.Id("Remove"));
                    Actions action = new Actions(driver);
                    action.MoveToElement(removeButton).Perform();
                    //Waiting for the menu to be displayed    
                    System.Threading.Thread.Sleep(2000);
                    removeButton.Click();
                }
                catch
                {
                    break;
                }
            }
        }

        [Test]
        public void MyCardsPage_FindNewCard_CardFoundOnMyCards()
        {
            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement cardName = driver.FindElement(By.Id("Name"));
            Assert.AreEqual(cardName.Text, "Raichu");
        }

        [Test]
        public void MyCardsPage_CheckRemoveLinkExistsWhenCardExists_RemoveLinkExists()
        {
            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL); 
            IWebElement removeButton = driver.FindElement(By.Id("Remove"));
            Assert.IsNotNull(removeButton);
        }

        [Test]
        public void MyCardsPage_TryRemoveCardWithNoCards_LinkNotFound()
        {
            Login();
            RemoveAllCards();
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement removeButton = null;
            try
            {
                removeButton = driver.FindElement(By.Id("Remove"));
            }
            catch { }
            Assert.IsNull(removeButton);
        }

        [Test]
        public void MyCardsPage_RemoveACard_CardIsRemoved()
        {
            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement removeButton = driver.FindElement(By.Id("Remove")); 
            Actions action = new Actions(driver);
            action.MoveToElement(removeButton).Perform();
            //Waiting for the menu to be displayed    
            System.Threading.Thread.Sleep(2000);
            removeButton.Click();
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement cardName = null;
            try
            {
                cardName = driver.FindElement(By.Id("Name"));
            }
            catch { }
            Assert.IsNull(cardName);
        }
    }
}
