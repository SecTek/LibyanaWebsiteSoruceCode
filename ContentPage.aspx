<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="ContentPage, App_Web_contentpage.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li id="li_Breadcrumb_Parent" runat="server" visible="false"></li>
                    <li id="li_Breadcrumb_last" runat="server"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12" id="div_body" runat="server">
                <asp:Literal ID="ltrBody" runat="server" Text=""></asp:Literal>
            </div>
            <div class="col col_12_of_12" id="div_body_not_available" runat="server" visible="false">
                <div class="content-title" runat="server" id="div_not_available">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="div-cphBanner">
        <div class="container ">
            <div class="row">
                <div class="col col_12_of_12">
                    <uc1:Services runat="server" ID="Services" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
   <asp:Literal runat="server" ID="lit_Footer_Banner" ></asp:Literal>
</asp:Content>
