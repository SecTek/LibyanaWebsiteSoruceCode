<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Countries_View, App_Web_countries_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_Country').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblCities %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblCountry %></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="Country_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblCountry %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
   <div class="body-nest" id="footable" runat="server">
        <table id="tblData_Country" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblIsDeleted %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptData" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width: 69%"><%# Eval("NAME") %></td>
                            <td style="width: 12%"><%# Localization.GetDeletedStatus(Eval("IS_DELETED")) %></td>
                            <td style="width: 19%">
                                <asp:HiddenField runat="server" ID="hfID_MAIN" Value='<%#DataBinder.Eval(Container,"DataItem.ID_MAIN") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnEdit" OnClick="btnEdit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" />
                                <cc1:MyCustomButton runat="server" ID="btnDelete" OnClick="btnDelete_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# ShowHide(Eval("IS_DELETED")) %>' />
                                <cc1:MyCustomButton runat="server" ID="btnPowerDelete" OnClick="btnPowerDelete_Click" class='maki-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnPowerDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
    <div id="DivEmpty" class="Div_Empty" runat="server" visible="false">
        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
    </div>
</asp:Content>
