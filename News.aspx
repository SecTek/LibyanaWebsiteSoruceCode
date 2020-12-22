<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="News, App_Web_news.aspx.cdcab7d2" %>

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
                    <li><%= Resources.SITE_Resource.News%></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12 news-top5">
                <div class=" col_8_of_12 pull-left top5-inner">
                    <div class="top5-background-img" style="background-image: url('<%= news_1_img %>')">
                        <div class="description-area">
                            <h2><a href="<%= news_1_link %>"><%= news_1_title %></a></h2>
                            <p><%= news_1_date %></p>
                        </div>
                    </div>
                </div>
                <div class=" col_4_of_12 pull-left top5-inner ">
                    <div class="top5-background-img" style="background-image: url('<%= news_2_img %>')">
                        <div class="description-area">
                            <h2><a href="<%= news_2_link %>"><%= news_2_title %></a></h2>
                            <p><%= news_2_date %></p>
                        </div>
                    </div>
                </div>
                <div class=" col_4_of_12 pull-left  top5-inner">
                    <div class="top5-background-img" style="background-image: url('<%= news_3_img %>')">
                        <div class="description-area">
                            <h2><a href="<%= news_3_link %>"><%= news_3_title %></a></h2>
                            <p><%= news_3_date %></p>
                        </div>
                    </div>
                </div>
                <div class=" col_4_of_12 pull-left top5-inner">
                    <div class="top5-background-img" style="background-image: url('<%= news_4_img %>')">
                        <div class="description-area">
                            <h2><a href="<%= news_4_link %>"><%= news_4_title %></a></h2>
                            <p><%= news_4_date %></p>
                        </div>
                    </div>
                </div>
                <div class=" col_4_of_12 pull-left top5-inner">
                    <div class="top5-background-img" style="background-image: url('<%= news_5_img %>')">
                        <div class="description-area">
                            <h2><a href="<%= news_5_link %>"><%= news_5_title %></a></h2>
                            <p><%= news_5_date %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col col_12_of_12 news-header">
                <%= Resources.SITE_Resource.More_recent_news%>
            </div>
            <div class="col col_12_of_12 pull-left new-outer">
                <asp:UpdatePanel runat="server" ID="up" UpdateMode="Conditional">
                    <ContentTemplate>
                        <aspRepeater:DataPagerRepeater ID="rpt" PersistentDataSource="true"
                            runat="server">
                            <ItemTemplate>
                                <div class="new-inner">
                                    <div class="left-side">
                                        <img src="<%# GetImage(Eval("IMAGE_1")) %>">
                                    </div>
                                    <div class="right-side">
                                        <h4><a href="News_Details.aspx?id=<%# Eval("ID_MAIN") %>"><%# Eval("TITLE") %></a></h4>
                                        <h3><a href="News_Details.aspx?id=<%# Eval("ID_MAIN") %>"><%# Eval("PUBLICATION_DATE", "{0: dd/MM/yyyy}") %></a></h3>
                                        <p><%# Localization.StripTagsRegex(Eval("BODY").ToString(),250) %></p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </aspRepeater:DataPagerRepeater>
                        <div class="PagerContainer" id="divPagerContainer" runat="server">
                            <asp:DataPager ID="pgrCustomRepeater" runat="server" PagedControlID="rpt"
                                class="pager" PageSize="10">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                        ShowFirstPageButton="false" ShowNextPageButton="false" ShowLastPageButton="false"
                                        ShowPreviousPageButton="true" PreviousPageText="<%$ Resources:Site_resource,Prev %>" />
                                    <asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="selected" NextPreviousButtonCssClass="pagerbuttons"
                                        RenderNonBreakingSpacesBetweenControls="true" NumericButtonCssClass="pagerbuttons" />
                                    <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                        ShowFirstPageButton="false" ShowPreviousPageButton="false" ShowNextPageButton="true"
                                        ShowLastPageButton="false" NextPageText="<%$ Resources:Site_resource,Next %>" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

