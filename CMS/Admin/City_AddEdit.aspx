<%@ page title="Imagin grp. : Content Management System" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="City_AddEdit, App_Web_city_addedit.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblCities %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="Cities_View.aspx"><%= Resources.CMS_Resource.lblCities %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right">
          <div class="input-group input-widget">
              '<a href="City_AddEdit.aspx?Country_Id=<%= Request.QueryString["Country_Id"] %>" class="btn btn-danger"><%= Resources.CMS_Resource.lblCreateNew %> <%= Resources.CMS_Resource.lblCity %></a>
            </div>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
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
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
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
                                        <div class="form-group" runat="server" id="div_IsDeleted">
                                            <label class="col-sm-3 control-label"></label>
                                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                                                <div class="col-sm-4" runat="server" id="DivIsDeleted">
                                                    <asp:CheckBox CssClass="frm_Checkbox" ID="cbIsDeleted" runat="server" type="checkbox"></asp:CheckBox>
                                                    <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblIsDeleted %></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
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
                                    <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                                    <div class="col-sm-6">
                                        <asp:TextBox ID="txtName_Save" runat="server" CssClass="form-control ReqValidation"></asp:TextBox>
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
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 skin-flat list cb_Row_Height">
                                        <asp:Button ID="btnSave" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert %>" class="btn btn-primary" OnClick="btnSave_Click" OnClientClick="CheckValidation()" />
                                        <asp:Button ID="btnSave_AddNew" runat="server" Text="<%$ Resources:CMS_Resource, btnInsert_AddNew %>" class="btn btn-primary" OnClick="btnSave_AddNew_Click" OnClientClick="CheckValidation()" />
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
