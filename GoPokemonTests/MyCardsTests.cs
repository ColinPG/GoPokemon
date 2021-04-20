using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.IO;
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

        [Test]
        public void MyCardsPage_DownloadLinkExists_LinkFound()
        {
            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement downloadLink = null;
            try
            {
                downloadLink = driver.FindElement(By.Id("download"));
            }
            catch { }
            Assert.IsNotNull(downloadLink);
        }

        [Test]
        public void MyCardsPage_CollectionIsDownloaded_FileFound()
        {
            driver.Close();
            string downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var chromeOptions = new ChromeOptions();
            chromeOptions.AddArguments("--browser.download.folderList=2");
            chromeOptions.AddArguments("--browser.helperApps.neverAsk.saveToDisk=text/plain");
            chromeOptions.AddArguments("--browser.download.dir=" + downloadPath);
            chromeOptions.AddUserProfilePreference("download.prompt_for_download", false);
            chromeOptions.AddUserProfilePreference("download.directory_upgrade", true);
            chromeOptions.AddUserProfilePreference("download.default_directory", downloadPath);
            chromeOptions.AddUserProfilePreference("intl.accept_languages", "nl");
            chromeOptions.AddUserProfilePreference("disable-popup-blocking", "true");
            driver = new ChromeDriver(chromeOptions);

            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement downloadLink = driver.FindElement(By.LinkText("Download Your Card Information"));
            string path = downloadLink.GetAttribute("href");
            driver.Navigate().GoToUrl(path);
            var timeAtPause = DateTime.Now;
            var seconds = TimeSpan.FromSeconds(3);
            var wait = new WebDriverWait(driver, seconds);
            wait.PollingInterval = TimeSpan.FromMilliseconds(1000);
            wait.Until(wd => (DateTime.Now - timeAtPause) - seconds > TimeSpan.Zero);
            string finalPath = downloadPath + "\\Collection.csv";
            Assert.True(File.Exists(finalPath));
            File.Delete(finalPath);
        }

        [Test]
        public void MyCardsPage_CheckCardValue_CardValueFound()
        {
            Login();
            RemoveAllCards();
            UploadTests.UploadCard(driver, 1, "Raichu");
            driver.Navigate().GoToUrl(homeURL + MyCardsURL);
            IWebElement Value = null;
            try
            {
                Value = driver.FindElement(By.Id("Value"));
            }
            catch { }
            Assert.IsNotNull(Value);
        }

    }
}
