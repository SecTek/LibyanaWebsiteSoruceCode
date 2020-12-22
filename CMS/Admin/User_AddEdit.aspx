<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="User_AddEdit, App_Web_user_addedit.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblUsers %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Users_View.aspx"><%= Resources.CMS_Resource.lblUsers %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right">
            <div class="input-group input-widget">
                <a href="User_AddEdit.aspx" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblUser %></a>
            </div>
        </li>
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
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-4 ">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsActive" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsActive %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="div_isDeleted">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-4" runat="server" id="DivIsDeleted">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsDeleted" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsDeleted %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" runat="server" id="Div_For_Config">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <div class="col-sm-4" runat="server" id="DivIsConfigUser">
                                            <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsConfigUser" runat="server" type="checkbox"></asp:CheckBox>
                                            <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsConfigUser %></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group Note_Cls">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control ReqValidation emailValidation" type="email"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 lbl_Note">*(<%= Resources.CMS_Resource.GoogleAnalyticsHint %>)</div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblUsername %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPassword %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtComplexPassword" runat="server" CssClass="form-control ReqValidation ComplexPassword" type="Pass" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:TextBox>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control ReqValidation" Visible="false"></asp:TextBox>
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
