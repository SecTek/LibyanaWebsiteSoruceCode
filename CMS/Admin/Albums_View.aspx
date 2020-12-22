<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Albums_View, App_Web_albums_view.aspx.1f2a64c3" %>

<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(window).load(function () {
            $('#tblData_Album').DataTable({
                stateSave: true
            });
            $('#tblData_Album2').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblAlbums %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><%= Resources.CMS_Resource.lblAlbums %></li>
        <li class="pull-right" runat="server" id="Div_AddNew">
            <div class="input-group input-widget">
                <a href="Album_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblAlbum %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest" id="footable" runat="server">
        <table id="tblData_Album" class="table-striped  footable metro-blue gvDataClass" width="100%">
            <thead>
                <tr>
                    <th><%= Resources.CMS_Resource.lblTitle %></th>
                    <th><%= Resources.CMS_Resource.lblIsActive %></th>
                    <th><%= Resources.CMS_Resource.lblIsDeleted %></th>
                    <th><%= Resources.CMS_Resource.lblIsPublish %></th>
                    <th><%= Resources.CMS_Resource.lblCheckedOutBy %></th>
                    <th><%= Resources.CMS_Resource.lblCheckedOutDate %></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptData" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width: 35%"><%# Eval("TITLE") %></td>
                            <td style="width: 10%"><%# Localization.GetStatus(Eval("IS_ACTIVE")) %></td>
                            <td style="width: 10%"><%# Localization.GetDeletedStatus(Eval("IS_DELETED")) %></td>
                            <td style="width: 10%"><%# Localization.GetPublishStatus(Eval("IS_PUBLISHED")) %></td>
                            <td style="width: 10%"><%# Eval("CHECKED_OUT_BY_NAME") %></td>
                            <td style="width: 10%"><%# Localization.GetCheckedDate(Eval("CHECKED_OUT_DATE")) %></td>
                            <td style="width: 15%">
                                <asp:HiddenField runat="server" ID="hfID_MAIN" Value='<%#DataBinder.Eval(Container,"DataItem.ID_MAIN") %>' />
                                <div runat="server" visible='<%# CheckFinalStatus(Convert.ToInt16(Eval("CHECKED_OUT_BY"))) %>'>
                                    <cc1:MyCustomButton runat="server" ID="btnEdit" OnClick="btnEdit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" Visible='<%# Show_Element_Based_On_Permission(true,false,true,false,false,false,false) %>' />
                                </div>
                                <div runat="server" visible='<%# Convert.ToBoolean(Eval("IS_PUBLISHED")) %>'>
                                    <cc1:MyCustomButton runat="server" ID="btnTracking" OnClick="btnTracking_Click" class='entypo-target LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibTracking %>" Visible='<%# Show_Element_Based_On_Permission(true,false,false,false,false,false,true) %>' />
                                </div>
                                <div runat="server" visible='<%# CheckFinalStatus(Convert.ToInt16(Eval("CHECKED_OUT_BY"))) %>'>
                                    <div runat="server" visible='<%# !(Convert.ToBoolean(Eval("IS_DELETED"))) %>'>
                                        <cc1:MyCustomButton runat="server" ID="btnDelete" OnClick="btnDelete_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# Show_Element_Based_On_Permission(true,false,false,true,false,false,false) %>' />
                                    </div>
                                </div>
                                <cc1:MyCustomButton runat="server" ID="btnPowerDelete" OnClick="btnPowerDelete_Click" class='maki-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnPowerDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" Visible='<%# Show_Element_Based_On_Permission(true,false,false,false,false,false,false) %>' />
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
    <%-------------------------------------------------------------------------------------------------------------%>
    <%-------------------------------------------------------------------------------------------------------------%>
    <%-------------------------------------------------------------------------------------------------------------%>
    <%-------------------------------------------------------------------------------------------------------------%>
    <div class="div-auditing " runat="server">
        <p><%= Resources.CMS_Resource.lblAuditingSection %></p>
    </div>
    <div class="body-nest no-padding-bot">
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-sm-12">
                <div class="input-group  pull-right">
                    <asp:DropDownList ID="ddlLanguage" runat="server" Width="96px" CssClass="dllLang_Tracking" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
        </div>
        <div runat="server" id="footable2">
            <table id="tblData_Album2" class="table-striped  footable metro-blue gvDataClass" width="100%">
                <thead>
                    <tr>
                        <th><%= Resources.CMS_Resource.lblTitle %></th>
                        <th><%= Resources.CMS_Resource.lblLanguage %></th>
                        <th><%= Resources.CMS_Resource.lblAuditingStatus %></th>
                        <th><%= Resources.CMS_Resource.lblCreated_By%></th>
                        <th><%= Resources.CMS_Resource.lblCreated_Date%></th>
                        <th><%= Resources.CMS_Resource.lblApprovedBy%></th>
                        <th><%= Resources.CMS_Resource.lblApprovedDate%></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptData2" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td style="width: 25%"><%# Eval("TITLE") %></td>
                                <td style="width: 10%"><%# Localization.GetLanguage(Eval("ID_LANG")) %></td>
                                <td style="width: 10%"><%# Localization.GetAuditingStatus(Eval("ID_STATUS")) %></td>
                                <td style="width: 10%"><%# Eval("USERNAME") %></td>
                                <td style="width: 10%"><%# Localization.GetCheckedDate(Eval("CREATED_DATE"))%></td>
                                <td style="width: 10%"><%# Localization.CheckResponseForPending(Eval("ID_STATUS"),Eval("RESPONSE_BY_NAME")) %></td>
                                <td style="width: 10%"><%# Localization.CheckResponseForPending(Eval("ID_STATUS"),Localization.GetCheckedDate(Eval("RESPONSE_DATE")))%></td>
                                <td style="width: 15%">
                                    <asp:HiddenField runat="server" ID="hfID_MAIN_Audit" Value='<%#DataBinder.Eval(Container,"DataItem.ID_AUDITING_MAIN") %>' />
                                    <div runat="server" visible='<%# CheckFinalStatus(Convert.ToInt16(Eval("ID_STATUS")),Convert.ToInt16(Eval("CREATED_BY"))) %>'>
                                        <cc1:MyCustomButton runat="server" ID="btnEdit_Audit" OnClick="btnEdit_Audit_Click" class='fontawesome-pencil LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, ibEdit %>" Visible='<%# Show_Element_Based_On_Permission(true,false,true,false,false,false,false) %>' />
                                    </div>
                                    <div runat="server" visible='<%# CheckAuditDelete(Convert.ToInt16(Eval("ID_STATUS"))) %>'>
                                        <cc1:MyCustomButton runat="server" ID="btnDelete_Audit" OnClick="btnDelete_Audit_Click" class='fontawesome-trash LinkButton-Image' ToolTip="<%$ Resources:CMS_Resource, btnDelete %>" OnClientClick="return confirm('Are you sure you want to delete?');" />
                                    </div>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
    <div id="DivEmpty2" class="Div_Empty no-margin-top" runat="server" visible="false">
        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
    </div>
</asp:Content>
