<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Photo_Auditing, App_Web_photo_auditing.aspx.1f2a64c3" %>

<%@ Register Src="~/CMS/Controls/CustomRadEditor.ascx" TagPrefix="uc1" TagName="CustomRadEditor" %>
<%@ Register Assembly="ImagineControl" Namespace="ImagineControl" TagPrefix="ImagineControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="../Controls/FileUploader.ascx" TagName="FileUploader" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblPhotos %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Photos_View.aspx"><%= Resources.CMS_Resource.lblPhotos %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right" runat="server" id="li_AddNew">
            <div class="input-group input-widget">
                <a href="Photo_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblPhoto %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest">
        <div runat="server" id="section_tracking" class="section_tracking">
            <div class="form-group">
                <label class="col-sm-12 control-label" style="text-align: center !important; font-size: 24px; margin-bottom: 30px"><%= Resources.CMS_Resource.ibTracking%></label>
            </div>
            <asp:GridView ID="gvData" runat="server" DataKeyNames="ID" AutoGenerateColumns="False" PageSize="1000" CssClass="gv-tbl">
                <Columns>
                    <asp:BoundField ItemStyle-Width="15%" HeaderText="<%$ Resources:CMS_Resource, lblResponseDate %>" DataField="RESPONSE_DATE"></asp:BoundField>
                    <asp:BoundField ItemStyle-Width="15%" HeaderText="<%$ Resources:CMS_Resource, lblResponseBy %>" DataField="RESPONSE_BY_NAME"></asp:BoundField>
                    <asp:TemplateField ItemStyle-Width="10%" HeaderText="<%$ Resources:CMS_Resource, lblStatus %>">
                        <ItemTemplate>
                            <%# Localization.GetAuditingStatus(Convert.ToInt16(Eval("ID_STATUS"))) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField ItemStyle-Width="45%" HeaderText="<%$ Resources:CMS_Resource, lblNotes %>" DataField="RESPONSE_NOTE"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <div class="form-group">
                <hr />
            </div>
        </div>
        <div class="wizard-tab">
            <asp:Repeater ID="rptBody" runat="server" OnItemDataBound="rptBody_ItemDataBound" OnItemCommand="rptBody_ItemCommand">
                <ItemTemplate>
                    <h2 runat="server" id="h2_Lang"><%# Eval("NAME") %></h2>
                    <asp:HiddenField ID="hfLanguage" runat="server" Value='<%# (Eval("ID")) %>' />
                    <section class="UnderValidationSection">
                        <div class="panel-body">
                            <asp:UpdatePanel runat="server" ID="upEntry" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="form-horizontal bucket-form">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblParentTitle %></label>
                                            <div class="col-sm-6">
                                                <asp:DropDownList ID="ddlParentPhoto" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"></label>
                                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive" runat="server" type="checkbox"></asp:CheckBox>
                                                <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOrder %></label>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="txtOrder" runat="server" CssClass="form-control ReqValidation NumberValidation" type="number"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblImage %></label>
                                            <div class="col-sm-6">
                                                <asp:UpdatePanel runat="server" ID="upImage" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <telerik:RadDropDownList ID="ddlImage" runat="server" DataTextField="Name" Width="22.000em" DropDownHeight="200px" Skin="Vista">
                                                            <ItemTemplate>
                                                                <table cellpadding="0" cellspacing="0">
                                                                    <tr>
                                                                        <td width="190px">
                                                                            <%# DataBinder.Eval(Container.DataItem, "Name")%>
                                                                        </td>
                                                                      <%--  <td class="ddlImageTD">
                                                                            <asp:Image ID="Image" runat="server" CssClass="ddlImage" ImageUrl=' <%# DataBinder.Eval(Container.DataItem, "FileName")%>' Visible='<%# GetImage(Eval("FileName")) %>' />
                                                                        </td>--%>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <img src="../assets/img/ddlImageSep.png" alt="" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                        </telerik:RadDropDownList>
                                                        <asp:Button ID="btnShowImage" runat="server" Text="<%$ Resources:CMS_Resource, btnPopup %>" CssClass="btn btn-warning" OnClientClick="RemoveValidationForFileUploader();" />
                                                        <cc1:ModalPopupExtender ID="mpImage" runat="server" PopupControlID="pnlImage" TargetControlID="btnShowImage"
                                                            BackgroundCssClass="modalBackground">
                                                        </cc1:ModalPopupExtender>
                                                        <asp:Panel ID="pnlImage" runat="server" CssClass="modalPopup" align="center" Style="display: none">
                                                            <uc1:FileUploader ID="fuImage" runat="server" />
                                                            <asp:Button ID="btnCloseImage" runat="server" Text="<%$ Resources:CMS_Resource, btnClose %>" CssClass="btn btn-success" CommandName="Close" />
                                                        </asp:Panel>
                                                        <div class="help-block">
                                                            <asp:Literal runat="server" ID="lFieldMessage_Image" Text="<%$ Resources:CMS_Resource, SourceFolder %>"></asp:Literal><span><%= ConfigurationManager.AppSettings["Att_Photo"] %></span>
                                                        </div>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </div>
                                        <div class="form-group" runat="server" visible="<%# NeedApproval() %>">
                                            <label class="col-sm-3 control-label"></label>
                                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="<%$ Resources:CMS_Resource, btnUpdate %>" CssClass="btn btn-primary" OnClientClick="CheckValidation()" />
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
            <div class="body no-padding-bot no-padding-top" runat="server" id="div_Auditing">
                <div class="form-horizontal bucket-form">
                    <asp:UpdatePanel ID="up_Audit" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="form-group auditing-section">
                                <div class="col-sm-12 skin-flat list ">
                                    <%= Resources.CMS_Resource.lblAuditingSection %>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblNotes %></label>
                                <div class="col-sm-6 skin-flat list ">
                                    <asp:TextBox runat="server" ID="txtAuditNote" CssClass="form-control" TextMode="MultiLine" Style="height: 200px !important"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"></label>
                                <div class="col-sm-6 skin-flat list">
                                    <asp:Button ID="btnNeedEdit" runat="server" Text="<%$ Resources:CMS_Resource, btnNeedEdit %>" CssClass="btn btn-primary" OnClick="btnNeedEdit_Click" />
                                    <asp:Button ID="btnApproved" runat="server" Text="<%$ Resources:CMS_Resource, btnApprove %>" CssClass="btn btn-primary" OnClick="btnApproved_Click" />
                                    <asp:Button ID="btnReject" runat="server" Text="<%$ Resources:CMS_Resource, btnReject %>" CssClass="btn btn-primary" OnClick="btnReject_Click" />
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
