<%@ page language="C#" autoeventwireup="true" inherits="CMS_Admin_DashBoard, App_Web_dashboard.aspx.1f2a64c3" %>

<%@ Register Src="../Controls/CMSHeader.ascx" TagName="CMSHeader" TagPrefix="ucCMSHeader" %>
<%@ Register Src="../Controls/Menu.ascx" TagName="Menu" TagPrefix="ucMenu" %>
<%@ Register Src="../Controls/Logo.ascx" TagName="Logo" TagPrefix="ucLogo" %>
<%@ Register Src="../Controls/Search.ascx" TagName="Serach" TagPrefix="ucSerach" %>
<%@ Register Src="../Controls/RightTreeView.ascx" TagPrefix="ucHeader" TagName="RightTreeView" %>
<%@ Register Src="../Controls/Footer.ascx" TagPrefix="ucHeader" TagName="Footer" %>
<%@ Register Src="../Controls/Dashboard.ascx" TagPrefix="ucHeader" TagName="Dashboard" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Imagine grp. : Content Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="../assets/js/jquery.js"></script>
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.css_Path %>/style.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.css_Path %>/loader-style.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.css_Path %>/bootstrap.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/css/footable.core.css?v=2-0-1" type="text/css" />
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/css/footable.standalone.css" type="text/css" />
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.css_Path %>/Custom.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/jNotify/jNotify.jquery.css" />
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/wizard/css/jquery.steps.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/iCheck/flat/all.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/datepicker.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/clockface.css">
    <link rel="stylesheet" href="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/Dashboard.css"  />
    
    <link rel="shortcut icon" href="../assets/ico/minus.png">
  
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="sm"></asp:ScriptManager>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <ucCMSHeader:CMSHeader ID="CMSHeader" runat="server" />
        <div id="skin-select">
            <ucLogo:Logo ID="Logo" runat="server" />
            <ucSerach:Serach ID="Search" runat="server" />
            <ucMenu:Menu ID="Menu" runat="server" />
        </div>
        <div class="wrap-fluid" id="wrap_fluid" runat="server">
            <div class="container-fluid paper-wrap bevel tlbr">
                <div class="row">
                    <div id="paper-top">
                        <div class="col-sm-4" runat="server" id="Div_Header_Title">
                            <h2 class="tittle-content-header">
                                <i class="icon-window"></i>
                                <span><%= Resources.CMS_Resource.lblDashboard %>
                            </span>
                            </h2>
                        </div>
                        <div class="col-sm-7 DashboardWelcomeBack">
                            <div class="devider-vertical visible-lg"></div>
                            <div class="tittle-middle-header">
                                <div class="alert">
                                    <span class="tittle-alert entypo-info-circled"></span>
                                    <%= Resources.CMS_Resource.WelcomeBack %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <ul id="breadcrumb">
                    <li><%= Resources.CMS_Resource.lblDashboard %>
                    </li>
                </ul>
                <div class="content-wrap DashboardWarp">
                    <div class="row">
                        <div class="col-sm-12">
                            <ucHeader:Dashboard runat="server" ID="Dashboard" />
                                <asp:CheckBox runat="server" ID="Is_Sitedown" Text ="Is Sitedown" OnCheckedChanged="Is_Sitedown_CheckedChanged" AutoPostBack="true" />
                        </div>
                    </div>
                    <div class="footer-space"></div>
                    <div id="footer">
                        <ucHeader:Footer runat="server" ID="Footer1" />
                    </div>
                </div>
            </div>
        </div>
        <div runat="server" id="sb_slidebar">
            <ucHeader:RightTreeView runat="server" ID="RightTreeView" />
        </div>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/slidebars/slidebars.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/preloader.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/bootstrap.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/app.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/load.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/jNotify/jNotify.jquery.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/js/footable.js?v=2-0-1"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/js/footable.sort.js?v=2-0-1"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/js/footable.filter.js?v=2-0-1"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/footable/js/footable.paginate.js?v=2-0-1"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/wizard/build/jquery.steps.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/iCheck/jquery.icheck.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/timepicker/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/clockface.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/datepicker/bootstrap-datetimepicker.js"></script>
        <script type="text/javascript" src="../assets/<%= Resources.CMS_Resource.js_Path %>/main.js"></script>
        
       
    </form>
</body>
</html>
