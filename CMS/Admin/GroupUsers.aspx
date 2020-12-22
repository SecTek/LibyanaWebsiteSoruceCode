<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" enableeventvalidation="false" inherits="GroupUsers, App_Web_groupusers.aspx.1f2a64c3" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblGroupUsers %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Groups_View.aspx"><%= Resources.CMS_Resource.lblGroups %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblGroupUsers %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-4">
                <input class="form-control" id="filter" placeholder='<%= Resources.CMS_Resource.lblSearch %>' type="text" />
            </div>
        </div>
        <asp:UpdatePanel runat="server" ID="upList" UpdateMode="Conditional">
            <ContentTemplate>
                <table id="tblData" class="table-striped footable-res footable metro-blue gvDataClass custom-pager" data-page-size="10" data-filter="#filter" data-filter-text-only="true">
                    <thead>
                        <tr>
                            <th><%= Resources.CMS_Resource.lblUsername %></th>
                            <th><%= Resources.CMS_Resource.lblIsActive %></th>
                            <th><%= Resources.CMS_Resource.lblConnectedStatus %></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <aspRepeater:DataPagerRepeater ID="rptData" PersistentDataSource="true" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td style="width: 55%"><%# (Eval("USERNAME")) %></td>
                                    <td style="width: 15%"><%# Localization.GetStatus(Eval("IS_ACTIVE")) %></td>
                                    <td style="width: 20%"><%# GetConnectedStatus(Eval("CONNECTED_STATUS")) %></td>
                                    <td style="width: 10%">
                                        <asp:ImageButton ID="ibConnect" runat="server" ImageUrl='<%#GetImage_Is_Checked(Eval("IS_CONNECTED")) %>' ToolTip='<%# Bind("IS_CONNECTED") %>' AlternateText='<%# Bind("IS_CONNECTED") %>' OnClick="ibConnect_Click" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.ID") %>' /></td>
                                </tr>
                            </ItemTemplate>
                        </aspRepeater:DataPagerRepeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="5">
                                <div class="pagination" runat="server" id="DivPagerContainer">
                                    <asp:DataPager ID="pgrCustomRepeater" runat="server" PagedControlID="rptData"
                                        class="pager" PageSize="10">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                                ShowFirstPageButton="false" ShowNextPageButton="false" ShowLastPageButton="false"
                                                ShowPreviousPageButton="true" PreviousPageText="<%$ Resources:CMS_Resource,Prev %>" />
                                            <asp:NumericPagerField ButtonCount="3" CurrentPageLabelCssClass="selected" NextPreviousButtonCssClass="pagerbuttons"
                                                RenderNonBreakingSpacesBetweenControls="true" NumericButtonCssClass="pagerbuttons" />
                                            <asp:NextPreviousPagerField ButtonCssClass="pagerbuttons" RenderDisabledButtonsAsLabels="true"
                                                ShowFirstPageButton="false" ShowPreviousPageButton="false" ShowNextPageButton="true"
                                                ShowLastPageButton="false" NextPageText="<%$ Resources:CMS_Resource,Next %>" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div id="DivEmpty" class="Div_Empty" runat="server" visible="false">
        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
    </div>
</asp:Content>
