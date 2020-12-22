<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="Group_AddEdit, App_Web_group_addedit.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblGroups %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Groups_View.aspx"><%= Resources.CMS_Resource.lblGroups %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="Group_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblGroup %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"><%# Eval("NAME") %></h2>
            <asp:HiddenField ID="hfLanguage" runat="server" Value='<%# (Eval("ID")) %>' />
            <section class="UnderValidationSection">
                <div class="panel-body">
                    <asp:UpdatePanel runat="server" ID="upEntry" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="form-horizontal bucket-form">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
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
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbNeedApproval" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblNeedApproval %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbAddPermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblAddPermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbEditPermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblEditPermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbDeletePermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblDeletePermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbUnDeletePermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblUnDeletePermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbRestorePermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblRestorePermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:CheckBox CssClass="frm_Checkbox" ID="cbTrackingPermission" runat="server" type="checkbox"></asp:CheckBox>
                                        <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblTrackingPermission %></label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnSave_Update_Click" Text="<%$ Resources:CMS_Resource, btnUpdate %>" CssClass="btn btn-primary" OnClientClick="CheckValidation()" />
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
