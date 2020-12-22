<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Search, App_Web_search.aspx.cdcab7d2" %>

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
                    <li><%= Resources.SITE_Resource.Search_Result%></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12 news-header">
            </div>
            <div class="col col_12_of_12 pull-left new-outer">
                <asp:UpdatePanel runat="server" ID="up" UpdateMode="Conditional">
                    <ContentTemplate>
                        <aspRepeater:DataPagerRepeater ID="rpt" PersistentDataSource="true"
                            runat="server">
                            <ItemTemplate>
                                <div class="new-inner">
                                    <div class="right-side">
                                <h4><a href='<%# GetLink(Eval("OBJ_TYPE"),Eval("OBJ_PAGE_NAME"))+DataBinder.Eval(Container,"DataItem.OBJ_ID_MAIN")%>'><%# CutText(Eval("OBJ_TITLE"),50)%></a></h4>
                                        <p>
                                <%# CutText(Eval("OBJ_BODY"),250) %>
                                <a href='<%# GetLink(Eval("OBJ_TYPE"),Eval("OBJ_PAGE_NAME"))+DataBinder.Eval(Container,"DataItem.OBJ_ID_MAIN")%>'><%= Resources.SITE_Resource.Read_More%></a>
                                        </p>
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
               <div class="col col_12_of_12 pull-left new-outer"  runat="server" id="div_search" visible="false"></div>

            



        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

