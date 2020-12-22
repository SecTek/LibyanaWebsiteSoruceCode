<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Faq_AddEdit, App_Web_faq_addedit.aspx.1f2a64c3" %>

<%@ Register Src="~/CMS/Controls/CustomRadEditor.ascx" TagPrefix="uc1" TagName="CustomRadEditor" %>
<%@ Register Assembly="ImagineControl" Namespace="ImagineControl" TagPrefix="ImagineControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="../Controls/FileUploader.ascx" TagName="FileUploader" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblFaqs %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Faqs_View.aspx"><%= Resources.CMS_Resource.lblFaqs %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right" runat="server" id="li_AddNew">
            <div class="input-group input-widget">
                <a href="Faq_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblFaq %></a>
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
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblQuestion %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control ReqValidation" TextMode="MultiLine" Style="height: 200px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAnswer %></label>
                                                <div class="col-sm-6">
                                                    <asp:TextBox ID="txtAnswer" runat="server" CssClass="form-control ReqValidation" TextMode="MultiLine" Style="height: 200px !important"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label"></label>
                                                <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive" runat="server" type="checkbox"></asp:CheckBox>
                                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
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
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblQuestion %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtQuestion_Save" runat="server" CssClass="form-control ReqValidation" TextMode="MultiLine" Style="height: 200px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAnswer %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtAnswer_Save" runat="server" CssClass="form-control ReqValidation" TextMode="MultiLine" Style="height: 200px !important"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-3 ">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive_Save" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                        </div>
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
