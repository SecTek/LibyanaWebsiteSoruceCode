<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Services_Centers, App_Web_services_centers.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        html, body, iframe, #map-canvas {
            height: 600px !important;
            margin: 0px !important;
            padding: 0px !important;
        }
    </style>

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFPvOTdrKWNOYTuNhnne77N1oqdyBUdBo"></script>
    <script type="text/javascript">
        <%= Store_Script %>
        $(document).ready(function () {
            setTimeout(function () { $(".dismissButton").click(); }, 1500);
        
        });
     
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section custom-inner-header-section-map">
        <div id="map-canvas"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li id="li_Breadcrumb_Parent" runat="server"></li>
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
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12">
                <asp:UpdatePanel runat="server" ID="up" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="div-roaming-country">
                            <div class="roaming-country-lbl"><%= Resources.SITE_Resource.City%></div>
                            <asp:DropDownList runat="server" ID="ddlCity" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        </div>
                        <div class="rpt-results" id="div_result" runat="server" visible="false">
                            <aspRepeater:DataPagerRepeater ID="rpt" PersistentDataSource="true" runat="server">
                                <HeaderTemplate>
                                    <table class="table-roaming-results">
                                        <thead>
                                            <tr>
                                                <th><%= Resources.SITE_Resource.ServiceCenter %></th>
                                                <th><%= Resources.SITE_Resource.Morning_Period %></th>
                                                <th><%= Resources.SITE_Resource.Evening_Period %></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td style="width: 30%"><%# Eval("TITLE") %></td>
                                        <td style="width: 25%"><%# Eval("MORNING") %></td>
                                        <td style="width: 25%"><%# Eval("EVENING") %></td>
                                        <td style="width: 20%">
                                            <a href="<%= "Services_Centers_Popup.aspx?id=" %><%# Eval("ID_MAIN") %>" class="aView iframe">
                                                <div class="btn "><%= Resources.SITE_Resource.Learn_More%></div>
                                            </a></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate></tbody></table></FooterTemplate>
                            </aspRepeater:DataPagerRepeater>
                            <div class="PagerContainer" id="divPagerContainer" runat="server">
                                <asp:DataPager ID="pgrCustomRepeater" runat="server" PagedControlID="rpt"
                                    class="pager" PageSize="10">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                            ShowFirstPageButton="false" ShowNextPageButton="false" ShowLastPageButton="false"
                                            ShowPreviousPageButton="true" PreviousPageText="<%$ Resources:Site_resource,Prev %>" />
                                        <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="selected" NextPreviousButtonCssClass="pagerbuttons"
                                            RenderNonBreakingSpacesBetweenControls="true" NumericButtonCssClass="pagerbuttons" />
                                        <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                            ShowFirstPageButton="false" ShowPreviousPageButton="false" ShowNextPageButton="true"
                                            ShowLastPageButton="false" NextPageText="<%$ Resources:Site_resource,Next %>" />
                                    </Fields>
                                </asp:DataPager>
                            </div>
                        </div>
                        </div>
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
                    <uc1:Services runat="server" ID="Services" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
    <asp:Literal runat="server" ID="lit_Footer_Banner"></asp:Literal>
</asp:Content>
