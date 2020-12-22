<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="FeedbackComplaints_View, App_Web_feedbackcomplaints_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_FeedbackComplaint').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblFeedbackComplaint %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblFeedbackComplaint%></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_FeedbackComplaint" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblFeedbackComplaintType %></th>
                    <th><%= Resources.CMS_Resource.lblCreation_Date %></th>
                    <th><%= Resources.CMS_Resource.lblIsDeleted %></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <aspRepeater:DataPagerRepeater ID="rptData" PersistentDataSource="true" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="width: 25%"><%# Eval("NAME") %></td>
                            <td style="width: 20%"><%# Eval("TYPE_NAME") %></td>
                            <td style="width: 25%"><%# Eval("CREATION_DATE") %></td>
                            <td style="width: 15%"><%# Localization.GetDeletedStatus(Eval("IS_DELETED")) %></td>
                            <td class="Hiddein_TD"><%# Eval("MOBILE") %></td>
                            <td class="Hiddein_TD"><%# Eval("ADDRESS") %></td>
                            <td class="Hiddein_TD"><%# Eval("SUBJECT") %></td>
                            <td class="Hiddein_TD"><%# Localization.StripTagsRegex(Eval("MESSAGE").ToString()) %></td>
                            <td class="Hiddein_TD"><%# Eval("EMAIL") %></td>
                            <td style="width: 15%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnView" OnClick="btnView_Click" class='icon-preview LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnView %>" />
                                <div runat="server" visible='<%# !(Convert.ToBoolean(Eval("IS_DELETED"))) %>'>
                                    <cc1:MyCustomButton runat="server" ID="btnDelete" OnClick="btnDelete_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# Show_Element_Based_On_Permission(true,false,false,true,false,false,false) %>' />
                                </div>
                                <cc1:MyCustomButton runat="server" ID="btnPowerDelete" OnClick="btnPowerDelete_Click" class='maki-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnPowerDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# Show_Element_Based_On_Permission(true,false,false,false,false,false,false) %>' />
                            </td>
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
    </div>
    <div id="DivEmpty" class="Div_Empty" runat="server" visible="false">
        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
    </div>
</asp:Content>
