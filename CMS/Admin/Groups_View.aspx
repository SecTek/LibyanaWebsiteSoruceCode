<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Groups_View, App_Web_groups_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblGroups %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblGroups %></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="Group_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblGroup %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-4">
                <input class="form-control" id="filter" placeholder='<%= Resources.CMS_Resource.lblSearch %>' type="text" />
            </div>
        </div>
        <table id="tblData" class="table-striped footable-res footable metro-blue gvDataClass" data-page-size="10" data-filter="#filter" data-filter-text-only="true">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblIsActive %></th>
                    <th><%= Resources.CMS_Resource.lblNeedApproval %></th>
                    <th><%= Resources.CMS_Resource.lblAddPermission %></th>
                    <th><%= Resources.CMS_Resource.lblEditPermission %></th>
                    <th><%= Resources.CMS_Resource.lblDeletePermission %></th>
                    <th><%= Resources.CMS_Resource.lblUnDeletePermission %></th>
                    <th><%= Resources.CMS_Resource.lblRestorePermission %></th>
                    <th><%= Resources.CMS_Resource.lblTrackingPermission %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptData" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width: 24%"><%# Eval("NAME") %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("IS_ACTIVE")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("NEED_APPROVAL")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("ADD")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("EDIT")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("DELETE")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("UNDELETE")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("RESTORE")) %></td>
                            <td style="width: 7%"><%# Localization.GetStatus(Eval("TRACKING")) %></td>
                            <td style="width: 20%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnEdit" OnClick="btnEdit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" />
                                <cc1:MyCustomButton runat="server" ID="btnDelete" OnClick="btnDelete_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" />
                                <cc1:MyCustomButton runat="server" ID="btnGroupModules" OnClick="btnGroupModules_Click" class='entypo-link LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnGroupModules %>" />
                                <cc1:MyCustomButton runat="server" ID="btnGroupUsers" OnClick="btnGroupUsers_Click" class='icon-user-group LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnGroupUsers %>" />
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
