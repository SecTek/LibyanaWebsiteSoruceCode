<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="OnlineSupport_Detail, App_Web_onlinesupport_detail.aspx.1f2a64c3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" runat="Server">
    <span><%= Resources.CMS_Resource.lblOnline_Support %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" runat="Server">
    <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="OnlineSupport_View.aspx"><%= Resources.CMS_Resource.lblOnline_Support %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right"></li>
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
                            <div class="form-group">
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
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <div class="panel-body">
                    <div class="form-horizontal bucket-form">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMobile %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblSubject %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblMessage %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" Style="height: 200px !important" TextMode="MultiLine" Enabled="false"></asp:TextBox>
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
