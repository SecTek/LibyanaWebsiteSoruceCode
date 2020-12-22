<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="ApplicantsLog_View, App_Web_applicantslog_view.aspx.1f2a64c3" %>
<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_ApplicantsLog').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblApplicantsLog %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblApplicantsLog %></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_ContactUs" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblCreation_Date %></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
                    <th class="Hiddein_TD"></th>
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
                            <td style="width: 60%"><%# Eval("FULL_NAME") %></td>
                            <td style="width: 25%"><%# Eval("CREATION_DATE") %></td>
                            <td class="Hiddein_TD"><%# Eval("BIRTH_PLACE") %></td>
                            <td class="Hiddein_TD"><%# Eval("NATIONAL_ID") %></td>
                            <td class="Hiddein_TD"><%# Eval("PERSONAL_CARD_ID") %></td>
                            <td class="Hiddein_TD"><%# Eval("PASSPORT_NUMBER") %></td>
                            <td class="Hiddein_TD"><%# Eval("CITY") %></td>
                            <td class="Hiddein_TD"><%# Eval("ADDRESS_1") %></td>
                            <td class="Hiddein_TD"><%# Eval("ADDRESS_2") %></td>
                            <td class="Hiddein_TD"><%# Eval("MOBILE_LIBYANA") %></td>
                            <td class="Hiddein_TD"><%# Eval("MOBILE_OTHER") %></td>
                            <td class="Hiddein_TD"><%# Eval("PHONE") %></td>
                            <td class="Hiddein_TD"><%# Eval("RELATIVE_NAME") %></td>
                            <td class="Hiddein_TD"><%# Eval("RELATIVE_RELATION") %></td>
                            <td class="Hiddein_TD"><%# Eval("RELATIVE_ADDRESS") %></td>
                            <td class="Hiddein_TD"><%# Eval("RELATIVE_PHONE") %></td>
                            <td class="Hiddein_TD"><%# Eval("EDUCATIONAL_NAME") %></td>
                            <td class="Hiddein_TD"><%# Eval("GRADE") %></td>
                            <td class="Hiddein_TD"><%# Eval("LANG_OTHER_NAME") %></td>
                            <td class="Hiddein_TD"><%# Eval("HAD_JUDICIAL_OBLIGATIONS_TEXT") %></td>
                            <td class="Hiddein_TD"><%# Eval("FILE_UPLOAD") %></td>
                            <td class="Hiddein_TD"><%# Eval("EMAIL") %></td>
                            <td style="width: 15%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnView" OnClick="btnView_Click" class='icon-preview LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnView %>" />
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

