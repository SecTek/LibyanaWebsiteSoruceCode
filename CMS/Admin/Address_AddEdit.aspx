﻿<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Address_AddEdit, App_Web_address_addedit.aspx.1f2a64c3" %>

<%@ Register Src="~/CMS/Controls/CustomRadEditor.ascx" TagPrefix="uc1" TagName="CustomRadEditor" %>
<%@ Register Assembly="ImagineControl" Namespace="ImagineControl" TagPrefix="ImagineControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="../Controls/FileUploader.ascx" TagName="FileUploader" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblAddresses %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Addresses_View.aspx"><%= Resources.CMS_Resource.lblAddresses %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right" runat="server" id="li_AddNew">
            <div class="input-group input-widget">
                <a href="Address_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblAddress %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <asp:UpdatePanel runat="server" ID="upDelete" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="body-nest" id="DivDeleteMode" runat="server">
                <section class="UnderValidationSection">
                    <div class="panel-body">
                        <div class="form-horizontal bucket-form">
                            <div class="form-group">
                                <div class="col-sm-7 skin-flat list cb_Row_Height">
                                    <p><%= Resources.CMS_Resource.Msg_DeletedEntry %></p>
                                </div>
                            </div>
                            <div class="form-group" runat="server" id="Div_btnUnDelete">
                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                    <asp:Button ID="btnUnDelete" runat="server" Text="<%$ Resources:CMS_Resource, btnUnDeleted %>" class="btn btn-danger" OnClick="btnUnDelete_Click" OnClientClick="CheckValidation()" />
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="body-nest" id="DivUpdateMood" runat="server" visible="false">
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
                                        <div runat="server" id="div_tab_main">
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
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtTel" runat="server" CssClass="form-control "></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel2 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtTel2" runat="server" CssClass="form-control "></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel3 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtTel3" runat="server" CssClass="form-control "></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblFax %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtFax" runat="server" CssClass="form-control "></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblFax2 %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtFax2" runat="server" CssClass="form-control "></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control emailValidation" type="email"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLatitude %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLongitude %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="form-group ContainFTB">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOperationHours %></label>
                                                <div class="col-sm-6">
                                                </div>
                                            </div>
                                            <div class="body-nest">
                                                <uc1:CustomRadEditor runat="server" ID="reOperationHours" />
                                            </div>
                                            <div class="form-group" style="display: none">
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
                                                                        <%--    <td class="ddlImageTD">
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
                                                                <asp:Label ID="lblImageDimensions" runat="server" CssClass="ImgDimensions"></asp:Label><br />
                                                                <asp:Literal runat="server" ID="lFieldMessage_Image" Text="<%$ Resources:CMS_Resource, SourceFolder %>"></asp:Literal><span><%= ConfigurationManager.AppSettings["Att_Address"] %></span>
                                                            </div>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                            <div class="form-group" style="display: none">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAddress %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 100px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group" runat="server" visible='<%# Show_Element_Based_On_Permission(true,false,true,false,false,false,false) %>'>
                                                <label class="col-sm-3 control-label"></label>
                                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                    <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="<%$ Resources:CMS_Resource, btnUpdate %>" CssClass="btn btn-primary" OnClientClick="CheckValidation()" />
                                                </div>
                                            </div>
                                        </div>
                                        <div runat="server" id="div_tab_main_hide">
                                            <div class="form-group">
                                                <label class="col-sm-12 control-label" style="text-align: center !important"><%= Resources.CMS_Resource.lblObjectIsCheckedOut %></label>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="body-nest" id="DivSaveMood" runat="server">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <asp:UpdatePanel runat="server" ID="upSave" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="panel-body">
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTitle %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtTitle_Save" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive_Save" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtTel_Save" runat="server" CssClass="form-control "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel2 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtTel2_Save" runat="server" CssClass="form-control "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblTel3 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtTel3_Save" runat="server" CssClass="form-control "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblFax %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtFax_Save" runat="server" CssClass="form-control "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblFax2 %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtFax2_Save" runat="server" CssClass="form-control "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtEmail_Save" runat="server" CssClass="form-control emailValidation" type="email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLatitude %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtLatitude_Save" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLongitude %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtLongitude_Save" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group ContainFTB">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblOperationHours %></label>
                                    <div class="col-sm-6">
                                    </div>
                                </div>
                                <div class="body-nest">
                                    <uc1:CustomRadEditor runat="server" ID="reOperationHours_Save" />
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblImage %></label>
                                    <div class="col-sm-6">
                                        <telerik:RadDropDownList ID="ddlImage_Save" runat="server" DataTextField="Name" Width="22.000em" DropDownHeight="200px" Skin="Vista">
                                            <ItemTemplate>
                                                <table cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td width="190px">
                                                            <%# DataBinder.Eval(Container.DataItem, "Name")%>
                                                        </td>
                                                       <%-- <td class="ddlImageTD">
                                                            <asp:Image ID="Image_Save" runat="server" CssClass="ddlImage" ImageUrl=' <%# DataBinder.Eval(Container.DataItem, "FileName")%>' Visible='<%# GetImage(Eval("FileName")) %>' />
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
                                        <asp:Button ID="btnShowImage_Save" runat="server" Text="<%$ Resources:CMS_Resource, btnPopup %>" CssClass="btn btn-warning" OnClientClick="RemoveValidationForFileUploader();" />
                                        <cc1:ModalPopupExtender ID="mpImage_Save" runat="server" PopupControlID="pnlImage_Save" TargetControlID="btnShowImage_Save"
                                            BackgroundCssClass="modalBackground">
                                        </cc1:ModalPopupExtender>
                                        <asp:Panel ID="pnlImage_Save" runat="server" CssClass="modalPopup" align="center" Style="display: none">
                                            <uc1:FileUploader ID="fuImage_Save" runat="server" />
                                            <asp:Button ID="btnCloseImage_Save" runat="server" Text="<%$ Resources:CMS_Resource, btnClose %>" OnClick="btnClose_Click" CssClass="btn btn-success" />
                                        </asp:Panel>
                                        <div class="help-block">
                                            <asp:Label ID="lblImageDimensions_Save" runat="server" CssClass="ImgDimensions"></asp:Label><br />
                                            <asp:Literal runat="server" ID="lFieldMessage_Image_Save" Text="<%$ Resources:CMS_Resource, SourceFolder %>"></asp:Literal><span><%= ConfigurationManager.AppSettings["Att_Address"] %></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAddress %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtAddress_Save" runat="server" CssClass="form-control" TextMode="MultiLine" Style="height: 100px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="Div_Save">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert %>" class="btn btn-primary" OnClick="btnSave_Click" OnClientClick="CheckValidation();" />
                                        <asp:Button ID="btnSave_AddNew" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert_AddNew %>" class="btn btn-primary" OnClick="btnSave_AddNew_Click" OnClientClick="CheckValidation();" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </section>
        </div>
    </div>
</asp:Content>
