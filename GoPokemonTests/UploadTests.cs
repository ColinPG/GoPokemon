using NUnit.Framework;
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

        [Test]
        public void UploadPage_NavigateToUploadPage_URLisUploadPage()
        {
            driver.Navigate().GoToUrl(homeURL + uploadURL);
            Assert.AreEqual(driver.Url, homeURL + uploadURL);
        }
    }
}
