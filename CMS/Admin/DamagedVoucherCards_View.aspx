<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="DamagedVoucherCards_View, App_Web_damagedvouchercards_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_DamagedVoucherCards').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblDamagedVoucherCards %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblDamagedVoucherCards %></li>
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
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-8 floating">
            </div>
            <div class="col-sm-4 floating">
            </div>
        </div>
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-12" runat="server" id="div_rbl">
                <div class="margin-right zero-padding floating">
                </div>
            </div>
        </div>
        <hr />
        <table id="tblData_DamagedVoucherCards" class="table-striped footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblPhone %></th>
                    <th><%= Resources.CMS_Resource.lblSerialNumber %></th>
                    <th><%= Resources.CMS_Resource.lblCreation_Date %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <aspRepeater:DataPagerRepeater ID="rptData" PersistentDataSource="true" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="width: 30%"><%# Eval("PHONE_NO") %></td>
                            <td style="width: 30%"><%# Eval("SERIAL_NO") %></td>
                            <td style="width: 30%"><%# Eval("IN_TIME") %></td>
                            <td style="width: 10%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnView" OnClick="btnView_Click" class='icon-preview LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnView %>" />
                            </td>
                        </tr>
                    </ItemTemplate>
                </aspRepeater:DataPagerRepeater>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="4">
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
