<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="MediaContactDetail, App_Web_mediacontactdetail.aspx.cdcab7d2" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                    <li><a href="Media_Contacts.aspx"><%= Resources.SITE_Resource.Media_Contacts%></a></li>
                    <li id="li_Breadcrumb" runat="server"></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container news-outer">
        <div class="row">
            <div class="col col_4_of_12 media-contact-img">
                <img runat="server" id="img_header" class="news-img" src="."/>
            </div>
            <div class="col col_8_of_12 media-contact-details">
                <div id="div_title" runat="server" visible="false"></div>
                <div id="divJobTitle" runat="server" visible="false"></div>
                <div id="divPhone" runat="server" visible="false"></div>
                <div id="divFax" runat="server" visible="false"></div>
                <div id="divMobile" runat="server" visible="false"></div>
                <div id="divEmail" runat="server" visible="false"></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

