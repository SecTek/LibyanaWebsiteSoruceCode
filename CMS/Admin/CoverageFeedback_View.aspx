<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="CoverageFeedback_View, App_Web_coveragefeedback_view.aspx.1f2a64c3" %>
<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
        $(window).load(function () {
            $('#tblData_CoverageFeedback').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" Runat="Server">
     <span><%= Resources.CMS_Resource.lblCoverageFeedback %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" Runat="Server">
     <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblCoverageFeedback %></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <asp:UpdatePanel UpdateMode="Conditional" ID="up_bc" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="btnExport" runat="server" Text="<%$ Resources:CMS_Resource, BtnExport %>" class="btn btn-primary" OnClick="btnExport_Click"/>
                        <asp:Label runat="server" ID="lblTotalRecords"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:PostBackTrigger ControlID="btnExport" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" Runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_CoverageFeedback" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblPhone_Number %></th>
                    <th><%= Resources.CMS_Resource.lblCreated_Date %></th>
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
                            <td style="width: 40%"><%# Eval("NAME") %></td>
                            <td style="width: 25%"><%# Eval("PHONE_NUMBER") %></td>
                            <td class="Hiddein_TD"><%# Eval("EMAIL") %></td>
                            <td class="Hiddein_TD"><%# Eval("ADDRESS") %></td>
                            <td class="Hiddein_TD"><%# Eval("NEAR_POINT") %></td>
                            <td class="Hiddein_TD"><%# Eval("LATITUDE") %></td>
                            <td class="Hiddein_TD"><%# Eval("LONGITUDE") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TYPE") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_DATE") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TIME_MORNING") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TIME_AFTERNOON") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TIME_EVENING") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TIME_NIGHT") %></td>
                            <td class="Hiddein_TD"><%# Eval("P_TIME_CONTINUOUSLY") %></td>
                            <td class="Hiddein_TD"><%# Eval("INSIDE_BUILDING") %></td>
                            <td style="width: 20%"><%# Eval("CREATED_DATE") %></td>
                            <td class="Hiddein_TD"><%# Eval("NOTE") %></td>
                            <td class="Hiddein_TD"><%# Eval("COVERAGE_TYPE ") %></td>
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

