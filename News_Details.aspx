<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="News_Details, App_Web_news_details.aspx.cdcab7d2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
       <script>
        $(document).ready(function () {
            $('a.tweet').click(function (e) {
                e.preventDefault();
                var loc = $(this).attr('href');
                var title = escape($(this).attr('title'));
                window.open('http://twitter.com/share?url=' + loc + '&text=' + title + '&', 'twitterwindow', 'height=255, width=550, top=' + ($(window).height() / 2 - 225) + ', left=' + $(window).width() / 2 + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
            });

            $('a.linkedIn').click(function (e) {
                e.preventDefault();
                var loc = $(this).attr('href');
                var title = escape($(this).attr('title'));
                window.open('https://www.linkedin.com/shareArticle?mini=true&url=' + loc + '&text=' + title + '&', 'linkedInwindow', 'height=557, width=550, top=' + ($(window).height() / 2 - 225) + ', left=' + $(window).width() / 2 + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
            });
        });
        function fbShare(url, title, descr, image, winWidth, winHeight) {
            var winTop = (screen.height / 2) - (winHeight / 2);
            var winLeft = (screen.width / 2) - (winWidth / 2);
            window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width=' + winWidth + ',height=' + winHeight);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container page-without-header">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li><a href="Media_Center.aspx"><%= Resources.SITE_Resource.Media_Center%></a></li>
                    <li><a href="News.aspx"><%= Resources.SITE_Resource.News%></a></li>
                    <li id="li_Breadcrumb" runat="server"></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container news-outer">
        <div class="row">
            <div class="col col_12_of_12 news-title" runat="server" id="div_title">
            </div>
            <div class="col col_12_of_12 news-date" runat="server" id="div_date">
            </div>
            <div class="col col_8_of_12">
                <img runat="server" id="img_header" src="." visible="false" class="news-img" />
                <asp:Literal ID="ltrBody" runat="server" Text=""></asp:Literal>
                <div class="social-media-link">
                    <ul>
                        <li class="li-fb"><a runat="server" id="ahref_FB"><i class="fa fa-facebook FB_Share" runat="server" id="FB_Share"></i></a></li>
                        <li class="li-twitter"><a runat="server" id="ahref_Twitter" class="tweet" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li class="li-linkedin"><a runat="server" id="ahref_Linkedin" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col col_4_of_12 news-headline-outer">
                <div class=" col_12_of_12 no-padding-right news-headline-title">
                    <%= Resources.SITE_Resource.Headlines%>
                </div>
                <asp:Repeater ID="rpt" runat="server">
                    <ItemTemplate>
                        <a href="News_Details.aspx?id=<%# Eval("ID_MAIN") %>">
                            <div class=" col_12_of_12 no-padding-right news-headline-inner">
                                <div class="left-side" style="background-image: url('<%# GetImage(Eval("IMAGE_1")) %>')">
                                </div>
                                <div class="right-side">
                                    <h4><%# Localization.StripTagsRegex(Eval("TITLE").ToString(),80) %></h4>
                                    <h3><%# Eval("PUBLICATION_DATE", "{0: dd/MM/yyyy}") %></h3>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

