#pragma checksum "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "38a335d29d769935092260332fe54d994bb66ba6"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Cards_Pages_MyCards), @"mvc.1.0.razor-page", @"/Areas/Cards/Pages/MyCards.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\_ViewImports.cshtml"
using GoPokemon.Areas.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\_ViewImports.cshtml"
using GoPokemon.Areas.Identity.Pages;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"38a335d29d769935092260332fe54d994bb66ba6", @"/Areas/Cards/Pages/MyCards.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0ebe7f4cc673e889b4ebe9cd1a1d801123d7b60e", @"/Areas/Cards/Pages/_ViewImports.cshtml")]
    public class Areas_Cards_Pages_MyCards : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/img/ScannedCards.png"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:100%; height:auto;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width:300px;height:300px;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("<div class=\"text-center\">\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "38a335d29d769935092260332fe54d994bb66ba64586", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n</div>\r\n\r\n<!-- Flip Card-->\r\n<center>\r\n    <h1>This is an Example of your scanned cards</h1>\r\n</center>\r\n<!--<div class=\"wrapper\">-->\r\n");
#nullable restore
#line 14 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
 foreach (var item in Model.Cards)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <div class=\"flip-card\" style=\"display: inline-block\">\r\n        <div class=\"flip-card-inner\">\r\n            <div class=\"flip-card-front\">\r\n                ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "38a335d29d769935092260332fe54d994bb66ba66275", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 504, "~/img/", 504, 6, true);
#nullable restore
#line 19 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
AddHtmlAttributeValue("", 510, item.Name +".jpg", 510, 20, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "alt", 1, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
#nullable restore
#line 19 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
AddHtmlAttributeValue("", 537, item.Name + " Card", 537, 22, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n            </div>\r\n            <div class=\"flip-card-back\" style=\"background-color:yellow; color:black;\">\r\n                <h1>");
#nullable restore
#line 22 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
               Write(item.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n                <p><bold>Collection Number: </bold>");
#nullable restore
#line 23 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
                                              Write(item.CollectionNumber);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                <p>");
#nullable restore
#line 24 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"
              Write(item.Set.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</p>
                <p>Quantity: ??</p>
                <p>Value: ??</p>
                <div>
                    <button type=""button"" style=""margin-top: auto"">Add</button>
                    <button type=""button"" style=""margin-top: auto"">Subtract</button>
                </div>
                <button type=""button"">Remove</button>
            </div>
        </div>
    </div>
");
#nullable restore
#line 35 "C:\Users\justi\Desktop\Conestoga\Capstone\Website\GoPokemon\GoPokemon\Areas\Cards\Pages\MyCards.cshtml"


}

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<!--</div>-->
<!--<center>
    <div class=""flip-card"">
        <div class=""flip-card-inner"">
            <div class=""flip-card-front"">
                <img src=""~/img/Pikachu.jpg"" alt=""Pikachu Card"" style=""width:300px;height:300px;"">
            </div>
            <div class=""flip-card-back"" style=""background-color:yellow;"">
                <h1>Pikachu</h1>
                <p>Card Type: Electric</p>
                <p>Health: 60</p>
            </div>
        </div>
    </div>-->
<!--Add css to change the fill color ot match type-->
<!--<div class=""flip-card"">
        <div class=""flip-card-inner"">
            <div class=""flip-card-front"">
                <img src=""~/img/Charizard.jpg"" alt=""Charizard Card"" style=""width:300px;height:300px;"">
            </div>
            <div class=""flip-card-back"" style=""background-color:Red;"">
                <h1>Charizard</h1>
                <p>Card Type: Fire</p>
                <p>Health: 150</p>
            </div>
        </div>
    </div>
</c");
            WriteLiteral("enter>-->\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<GoPokemon.Areas.Cards.MyCardsIndexModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<GoPokemon.Areas.Cards.MyCardsIndexModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<GoPokemon.Areas.Cards.MyCardsIndexModel>)PageContext?.ViewData;
        public GoPokemon.Areas.Cards.MyCardsIndexModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
