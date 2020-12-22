<%@ page title="" language="C#" masterpagefile="~/CMS/MasterPage.master" autoeventwireup="true" inherits="CoverageFeedback_Detail, App_Web_coveragefeedback_detail.aspx.1f2a64c3" %>
<%@ Register TagPrefix="aspRepeater" Namespace="CustomRepeaterControlWithDataPager" Assembly="CustomRepeaterControlWithDataPager" %>
<%@ Register TagPrefix="cc1" Assembly="Custom_Button" Namespace="Custom_Button" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
        $(window).load(function () {
            $('#tblData_CoverageFeedback').DataTable({
                stateSave: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitle" Runat="Server">
     <span><%= Resources.CMS_Resource.lblCoverageFeedback %></span>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumb" Runat="Server">
     <ul id="breadcrumb">
        <li><a href="Dashboard.aspx"><%= Resources.CMS_Resource.lblDashboard %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li><a href="CoverageFeedback_View.aspx"><%= Resources.CMS_Resource.lblCoverageFeedback %></a></li>
        <li><i class="fa fa-lg fa-angle-right"></i></li>
        <li runat="server" id="li_BreadCrumbs"></li>
        <li class="pull-right"></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBodyContent" Runat="Server">
    <div class="body-nest">
        <div class="wizard-tab">
            <h2 runat="server" id="h2_Lang"></h2>
            <section class="UnderValidationSection">
                <div class="panel-body">
                    <div class="form-horizontal bucket-form">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCity %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblAddress %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblNear_Point %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNear_Point" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLatitude %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLatitude" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblLongitude %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtLongitude" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblName %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblPhone_Number %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtPhone_Number" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblEmail %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Type %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Type" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCoverage_Type %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCoverage_Type" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Date %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Date" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Time_Morning%></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Time_Morning" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Time_Afternoon%></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Time_Afternoon" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Time_Evening %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Time_Evening" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Time_Night%></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Time_Night" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblP_Time_Continuosly %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtP_Time_Continuosly" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblInside_Bulding %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtInside_Bulding" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblNote%></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtNote" runat="server" CssClass="form-control" Enabled="false" TextMode="MultiLine" Height="150px"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><%= Resources.CMS_Resource.lblCreated_Date %></label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCreated_Date" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-6 skin-flat list cb_Row_Height">
                            </div>
                        </div>
                    </div>
                    <div id="DivEmpty" class="Div_Empty no-margin-top" runat="server" visible="false">
                        <p><%= Resources.CMS_Resource.lblEmptyDataText %></p>
                    </div>
                </div>
            </section>
        </div>
    </div>
</asp:Content>

