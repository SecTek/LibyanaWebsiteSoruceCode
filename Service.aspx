<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Service, App_Web_service.aspx.cdcab7d2" %>

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
                    <li><a href="Services.aspx?id=5"><%= Resources.SITE_Resource.Services%></a></li>
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

            <div class="col col_12_of_12" id="divInternationalCalls" runat="server" visible="false">
                <asp:UpdatePanel runat="server" ID="up">
                    <ContentTemplate>
                        <table class="table-roaming-results">
                            <thead>
                                <tr>
                                    <th><%= Resources.SITE_Resource.Country %></th>
                                    <th><%= Resources.SITE_Resource.CountryCode %></th>
                                    <th><%= Resources.SITE_Resource.RatePerMin %></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="width: 35%">
                                        <asp:DropDownList CssClass="full-width" runat="server" ID="ddlCountry" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
                                    <td style="width: 35%" id="tdCountryCode" runat="server"></td>
                                    <td style="width: 30%" id="tdRate" runat="server"></td>
                                </tr>
                                <tr>
                                    <td style="width: 100%" colspan="3" class="International_st">
                                        <ul>
                                            <li><%= Resources.SITE_Resource.International_st_1 %></li>
                                            <li><%= Resources.SITE_Resource.International_st_2 %></li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="div-cphBanner">
        <div class="container ">
            <div class="row">
                <div class="col col_12_of_12">
                    <section class="home-service-section">
                        <div class="container">
                            <div class="row">
                                <div class="col col_12_of_12 ">
                                    <div id="home-service">
                                        <asp:Repeater ID="rpt" runat="server">
                                            <ItemTemplate>
                                                <div>
                                                    <div class=" col_12_of_12 ot-image">
                                                        <img src="<%# GetImage_forbanner(Eval("IMAGE_2")) %>" />
                                                    </div>
                                                    <div class=" col_12_of_12 ot-text">
                                                        <h4><%# Eval("TITLE") %></h4>
                                                        <h5><%# Localization.StripTagsRegex(Eval("BODY").ToString(),115) %></h5>
                                                        <a href="Service.aspx?ID=<%# Eval("ID_MAIN") %>">
                                                            <div class="div-home-services-link"><%= Resources.SITE_Resource.Learn_More%></div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
    <asp:Literal runat="server" ID="lit_Footer_Banner"></asp:Literal>
</asp:Content>
