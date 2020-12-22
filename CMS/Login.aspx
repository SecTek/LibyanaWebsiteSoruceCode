<%@ page language="C#" autoeventwireup="true" inherits="Login, App_Web_login.aspx.dfaa92f0" validaterequest="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Imagine grp. : Content Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <!--  <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <!-- For MSG Box -->
    <link rel="stylesheet" href="assets/js/jNotify/jNotify.jquery.css" />
    <script src="assets/js/jNotify/jNotify.jquery.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/minus.png">
    <script type="text/javascript">
        //////////////////////////////////////For MSG Box
        function MsgAlert(Msg_Text, Msg_Type) {
            var _autoHide = true;
            var _clickOverlay = false;
            var _MinWidth = 250;
            var _TimeShown = 3000;
            var _ShowTimeEffect = 200;
            var _HideTimeEffect = 200;
            var _LongTrip = 20;
            var _HorizontalPosition = 'center';
            var _VerticalPosition = 'top';
            var _ShowOverlay = true;
            var _ColorOverlay = '#000';
            var _OpacityOverlay = 0.8;
            if (Msg_Type == "Info") {
                _jNotify(Msg_Text);
            }
            if (Msg_Type == "Error") {
                _jError(Msg_Text);
            }
            if (Msg_Type == "Success") {
                _jSuccess(Msg_Text);
            }
            function _jNotify(Msg_Text) {
                jNotify(
                    Msg_Text,
                    {
                        autoHide: _autoHide,
                        clickOverlay: _clickOverlay,
                        MinWidth: _MinWidth,
                        TimeShown: _TimeShown,
                        ShowTimeEffect: _ShowTimeEffect,
                        HideTimeEffect: _HideTimeEffect,
                        LongTrip: _LongTrip,
                        HorizontalPosition: _HorizontalPosition,
                        VerticalPosition: _VerticalPosition,
                        ShowOverlay: _ShowOverlay,
                        ColorOverlay: _ColorOverlay,
                        OpacityOverlay: _OpacityOverlay,
                        onClosed: function () { // added in v2.0
                        },
                        onCompleted: function () { // added in v2.0
                        }
                    });
            }
            function _jError(Msg_Text) {
                jError(
                    Msg_Text,
                    {
                        autoHide: _autoHide,
                        clickOverlay: _clickOverlay,
                        MinWidth: _MinWidth,
                        TimeShown: _TimeShown,
                        ShowTimeEffect: _ShowTimeEffect,
                        HideTimeEffect: _HideTimeEffect,
                        LongTrip: _LongTrip,
                        HorizontalPosition: _HorizontalPosition,
                        VerticalPosition: _VerticalPosition,
                        ShowOverlay: _ShowOverlay,
                        ColorOverlay: _ColorOverlay,
                        OpacityOverlay: _OpacityOverlay,
                        onClosed: function () { // added in v2.0
                        },
                        onCompleted: function () { // added in v2.0
                        }
                    });
            }
            function _jSuccess(Msg_Text) {
                jSuccess(
                    Msg_Text,
                    {
                        autoHide: _autoHide,
                        clickOverlay: _clickOverlay,
                        MinWidth: _MinWidth,
                        TimeShown: _TimeShown,
                        ShowTimeEffect: _ShowTimeEffect,
                        HideTimeEffect: _HideTimeEffect,
                        LongTrip: _LongTrip,
                        HorizontalPosition: _HorizontalPosition,
                        VerticalPosition: _VerticalPosition,
                        ShowOverlay: _ShowOverlay,
                        ColorOverlay: _ColorOverlay,
                        OpacityOverlay: _OpacityOverlay,
                        onClosed: function () { // added in v2.0
                        },
                        onCompleted: function () { // added in v2.0
                        }
                    });
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <asp:ScriptManager ID="smLoginPage" runat="server"></asp:ScriptManager>
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <div class="container">
            <div class="" id="login-wrapper">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div id="logo-login">
                            <h1>
                                <img src="assets/img/NewCMSLogo.png" /><span><%= ConfigurationManager.AppSettings["CMS_Version_Number"].ToString() %></span>
                            </h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <asp:UpdatePanel runat="server" ID="upLogin" UpdateMode="Conditional">
                        <ContentTemplate>
                            <div class="col-md-4 col-md-offset-4">
                                <div class="account-box">
                                    <div class="form-group">
                                        <input style="display: none;" type="password" class="form-control" name="anotherfakename" />
                                        <asp:Label ID="lblUsername" runat="server" Text="<%$ Resources:CMS_Resource, lblUsername %>" for="inputUsernameEmail"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <input style="display: none;" type="password" class="form-control" name="anotherfakename" />
                                        <asp:Label ID="lblPassword" runat="server" Text="<%$ Resources:CMS_Resource, lblPassword %>" for="inputPassword"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" OnTextChanged="txtUserName_TextChanged" TextMode="Password"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <div class="ui-select">
                                            <asp:Label ID="lblLanguage" runat="server" Text="<%$ Resources:CMS_Resource, lblLanguage %>"></asp:Label>
                                            <asp:DropDownList ID="ddlLanguage" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="checkbox pull-left">
                                        <asp:CheckBox ID="cbRememberMe" runat="server" Text="<%$ Resources:CMS_Resource, RememberMe %>" CssClass="cbRememberMe" />
                                    </div>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn btn-primary pull-right" OnClick="btnLogin_Click" />
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main_Login.js"></script>
</body>
</html>
