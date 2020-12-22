<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Users_View, App_Web_users_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      <script>
        $(window).load(function () {
            $('#tblData_User').DataTable({
                stateSave: true
            }); 
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblUsers %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblUsers %></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="User_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblUser %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_User" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName  %></th>
                    <th><%= Resources.CMS_Resource.lblIsActive %></th>
                    <th><%= Resources.CMS_Resource.lblIsDeleted %></th>
                    <th class="Hiddein_TD"><%= Resources.CMS_Resource.lblUsername%></th>
                    <th class="Hiddein_TD"><%= Resources.CMS_Resource.lblEmail %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptData" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width: 50%"><%# Eval("NAME") %></td>
                            <td style="width: 20%"><%# Localization.GetStatus(Eval("IS_ACTIVE")) %></td>
                            <td style="width: 20%"><%# Localization.GetDeletedStatus(Eval("IS_DELETED")) %></td>
                            <td class="Hiddein_TD"><%# Eval("USERNAME") %></td>
                            <td class="Hiddein_TD"><%# Eval("EMAIL") %></td>
                            <td style="width: 10%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="BtnEdit" OnClick="BtnEdit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" />
                                <cc1:MyCustomButton runat="server" ID="BtnDelete" OnClick="BtnDelete_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# ShowHide(Eval("IS_DELETED")) %>' />
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
