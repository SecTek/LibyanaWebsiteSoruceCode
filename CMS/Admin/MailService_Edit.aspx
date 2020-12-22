<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="MailService_Edit, App_Web_mailservice_edit.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblSMTP %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="MailServices_View.aspx"><%= Resources.CMS_Resource.lblSMTP %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <asp:UpdatePanel runat="server" ID="upSave" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="panel-body">
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="DivHost">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblHost %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtHost" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSenderEmail %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtSenderEmail" runat="server" CssClass="form-control ReqValidation emailValidation" type="email"> </asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="DivSenderPass">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSenderPass %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtSenderPass" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="DivSSL">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6  cb_Row_Height">
                                        <div class="col-sm-6">
                                            <div class="SingleCheckbox">
                                                <asp:CheckBox ID="cbSSL" runat="server" OnCheckedChanged="cbSSL_CheckedChanged" AutoPostBack="true" />
                                                <asp:Label ID="lblSSL" AssociatedControlID="cbSSL" runat="server" CssClass="CheckBoxLabel"></asp:Label>
                                            </div>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblSSL %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="DivPort">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPort %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtPort" runat="server" CssClass="form-control ReqValidation NumberValidation" type="number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert %>" class="btn btn-primary" OnClick="btnSave_Click" OnClientClick="CheckValidation()" />
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
