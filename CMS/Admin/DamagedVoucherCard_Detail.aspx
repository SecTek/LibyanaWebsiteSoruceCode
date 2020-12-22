<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="DamagedVoucherCard_Detail, App_Web_damagedvouchercard_detail.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblDamagedVoucherCards %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="DamagedVoucherCards_View.aspx"><%= Resources.CMS_Resource.lblDamagedVoucherCards %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right"></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBodyContent" runat="Server">
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <div class="panel-body">
                    <div class="form-horizontal bucket-form">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPhone %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSerialNumber %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtSerialNumber" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSecretNumner %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtSecretNumner" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblType %></label>
                            <div class="col-sm-6">
                                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0" Text="<%$ Resources:CMS_Resource, Select %>"></asp:ListItem>
                                    <asp:ListItem Value="5" Text="5"></asp:ListItem>
                                    <asp:ListItem Value="10" Text="10"></asp:ListItem>
                                    <asp:ListItem Value="30" Text="30"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                                <div class="col-sm-3">
                                    <asp:CheckBox CssClass="frm_Checkbox" ID="cbFlag" runat="server" type="checkbox"></asp:CheckBox>
                                    <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblFlag %></label>
                                </div>
                                <div class="col-sm-5">
                                    <asp:CheckBox CssClass="frm_Checkbox" ID="cbSPM_FLAG" runat="server" type="checkbox"></asp:CheckBox>
                                    <label for="flat-checkbox-1"><%= Resources.CMS_Resource.lblSPM_Flag %></label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblUser %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCreation_Date %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCreationDate" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblComments %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtComments" runat="server" CssClass="form-control" Style="height: 200px !important" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>
