<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="MailServices_View, App_Web_mailservices_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_MailService').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblSMTP %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblSMTP %></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="MailService_Edit.aspx?ID=<%=ConfigurationManager.AppSettings["NoReplyId"]  %>" class="btn btn-danger"><%= Resources.CMS_Resource.lblEditNoReplyEmail %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_MailService" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblName %></th>
                    <th><%= Resources.CMS_Resource.lblSenderEmail %></th>
                    <th class="Hiddein_TD"><%= Resources.CMS_Resource.lblHost %></th>
                    <th class="Hiddein_TD"><%= Resources.CMS_Resource.lblPort %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptData" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width: 40%"><%# Eval("NAME") %></td>
                            <td style="width: 40%"><%# Eval("SENDER_EMAIL") %></td>
                            <td class="Hiddein_TD"><%# Eval("HOST") %></td>
                            <td class="Hiddein_TD"><%# Eval("PORT") %></td>
                            <td style="width: 20%">
                                <asp:HiddenField runat="server" ID="hfID" Value='<%#DataBinder.Eval(Container,"DataItem.ID") %>' />
                                <cc1:MyCustomButton runat="server" ID="btnEdit" OnClick="btnEdit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" />
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
