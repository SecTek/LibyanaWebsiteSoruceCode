<%@ page language="C#" autoeventwireup="true" inherits="Support, App_Web_support.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/MobileMenu.ascx" TagPrefix="MobileMenu" TagName="MobileMenu" %>
<%@ Register Src="~/Controls/Rotater.ascx" TagPrefix="Rotater" TagName="Rotater" %>
<%@ Register Src="~/Controls/Featured_Offers.ascx" TagPrefix="Featured_Offers" TagName="Featured_Offers" %>
<%@ Register Src="~/Controls/Homepage_Banner_Under_FeaturedOffers.ascx" TagPrefix="Homepage_Banner_Under_FeaturedOffers" TagName="Homepage_Banner_Under_FeaturedOffers" %>
<%@ Register Src="~/Controls/Homepage_Banner_Under_Rotator.ascx" TagPrefix="Homepage_Banner_Under_Rotator" TagName="Homepage_Banner_Under_Rotator" %>
<%@ Register Src="~/Controls/Homepage_Banner_Under_Services.ascx" TagPrefix="Homepage_Banner_Under_Services" TagName="Homepage_Banner_Under_Services" %>
<%@ Register Src="~/Controls/Services.ascx" TagPrefix="Services" TagName="Services" %>
<%@ Register Src="~/Controls/Help_and_Support.ascx" TagPrefix="Help_and_Support" TagName="Help_and_Support" %>
<%@ Register Src="~/Controls/WhereToFindUs.ascx" TagPrefix="WhereToFindUs" TagName="WhereToFindUs" %>
<%@ Register Src="~/Controls/Media_Center.ascx" TagPrefix="Media_Center" TagName="Media_Center" %>
<%@ Register Src="~/Controls/Footer.ascx" TagPrefix="Footer" TagName="Footer" %>
<%@ Register Src="~/Controls/Menus.ascx" TagPrefix="Menus" TagName="Menus" %>
<%@ Register Src="~/Controls/Homepage_Banner_Infographic.ascx" TagPrefix="Homepage_Banner_Infographic" TagName="Homepage_Banner_Infographic" %>
<%@ Register Src="~/Controls/Packages.ascx" TagPrefix="Featured_Offers" TagName="Packages" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Libyana</title>
    <!-- ======== META TAGS ======== -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- ======== FAVICONS ======== -->
    <link rel="icon" href="img/favicon.ico" />
    <link rel="apple-touch-icon" href="img/favicon.png" />
    <!-- ======== STYLESHEETS ======== -->
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/fontawesome.css" />
    <link rel="stylesheet" href="css/popup.css" />
    <link rel="stylesheet" href="css/owlslider.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/colors.css" />
    <link rel="stylesheet" href="css/camera.css" />

    <!-- ======== DATE PICIKER ======== -->
    <link href="js/datepicker/datepicker.css" rel="stylesheet" />
    <link href="js/datepicker/clockface.css" rel="stylesheet" />
    <link href="js/datepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" />


    <link rel="stylesheet" href="Library/colorbox/example1/colorbox.css" />
    <link rel="stylesheet" href="Library/sliderPro/slider-pro.css" />

    <!-- ======== RESPONSIVE ======== -->
    <link rel="stylesheet" media="(max-width:768px)" href="css/responsive-0.css" />
    <link rel="stylesheet" media="(min-width:769px) and (max-width:992px)" href="css/responsive-768.css" />
    <link rel="stylesheet" media="(min-width:993px) and (max-width:1200px)" href="css/responsive-992.css" />
    <link rel="stylesheet" media="(min-width:1201px)" href="css/responsive-1200.css" />
    <!-- ======== GOOGLE FONTS ======== -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,300,300italic,400italic,700,700italic,600italic,600" />
    <link href='<%$ Resources:SITE_Resource, CSS%>' rel="stylesheet" />
    <link href='<%$ Resources:SITE_Resource, CSS_Inner%>' rel="stylesheet" />
    <link rel="stylesheet" media="(min-width:1px) and (max-width:767px)" href="<%$ Resources:SITE_Resource, CSS_0_768%>" />
    <link rel="stylesheet" media="(min-width:768px) and (max-width:1200px)" href="<%$ Resources:SITE_Resource, CSS_769_1024%>" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.ui.min.js" type="text/javascript"></script>
    <script>
        $(function () {
            $("#accordion").accordion();
        });
    </script>
    <style type="text/css">
        html, body, iframe, #map-canvas {
            margin: 0px !important;
            padding: 0px !important;
            width: 100% !important;
            height: 570px !important;
        }
    </style>
</head>
<body onscroll="sticky_menu_function();">
    <form id="form2" runat="server">
        <div data-role="none" id="pageone">
            <MobileMenu:MobileMenu runat="server" ID="MobileMenu" />
            <div data-role="main" class="ui-content">
                <asp:ScriptManager runat="server" ID="sc"></asp:ScriptManager>
                <div class="preloader"></div>
                <div id="wrapper" class="wide">
                    <Menus:Menus runat="server" ID="Menus" />
                    <div class="page-outer-body">
                        <div class="inner-header-section divFAQs" id="divFAQs" runat="server">
                            <div class="container">
                                <div class="row">
                                    <div class="col col_5_of_12 pull-left">
                                        <h3 class="sup-faq-h3"><%= Resources.SITE_Resource.FAQ_Text%></h3>
                                        <div id="accordion">
                                            <asp:Repeater ID="rpt" runat="server">
                                                <ItemTemplate>
                                                    <h3><%# Eval("QUESTION") %></h3>
                                                    <div>
                                                        <p>
                                                            <%# Eval("ANSWER") %>
                                                        </p>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <h3 class="sup-faq-more"><a href="FAQ.aspx"><%= Resources.SITE_Resource.Learn_More%></a></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container div-body-outer p-50">
                            <div class="row">
                                <div class="col col_4_of_12 pr-8 pull-left">
                                    <div class="sup-ser-div pull-left">
                                        <h3 class="sup-ser-title"><%= Sup_Ser_Title_1%></h3>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser-img" src="<%= Sup_Ser_Img_1%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <span class="sup-ser-txt"><%= Sup_Ser_Body_1%></span>
                                        <a class="sup-ser-lnk" href="<%= Sup_Ser_Lnk_1%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                                <div class="col col_4_of_12 prl-4 pull-left">
                                    <div class="sup-ser-div pull-left">
                                        <h3 class="sup-ser-title"><%= Sup_Ser_Title_2%></h3>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser-img" src="<%= Sup_Ser_Img_2%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <span class="sup-ser-txt"><%= Sup_Ser_Body_2%></span>
                                        <a class="sup-ser-lnk" href="<%= Sup_Ser_Lnk_2%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                                <div class="col col_4_of_12 pl-8 pull-left">
                                    <div class="sup-ser-div pull-left">
                                        <h3 class="sup-ser-title"><%= Sup_Ser_Title_3%></h3>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser-img" src="<%= Sup_Ser_Img_3%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <span class="sup-ser-txt"><%= Sup_Ser_Body_3%></span>
                                        <a class="sup-ser-lnk" href="<%= Sup_Ser_Lnk_3%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-header-section pink-bg">
                            <div class="pull-left inner-header-section w-50" style="background-image: url(img/sup-e-care-bg.jpg)">
                            </div>
                            <div class="pull-right w-50 sup-e-care-div">
                                <h3><%= e_care_Title%></h3>
                                <div><%= e_care_Body%></div>
                            </div>
                        </div>
                        <div class="container div-body-outer p-50">
                            <div class="row">
                                <div class="col col_4_of_12 pr-8 pull-left">
                                    <div class="sup-ser2-div pull-left">
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser2-img" src="<%= Sup_Ser_Img_4%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <h3 class="sup-ser2-title"><%= Sup_Ser_Title_4%></h3>
                                        <span class="sup-ser2-txt"><%= Sup_Ser_Body_4%></span>
                                        <a class="sup-ser2-lnk" href="<%= Sup_Ser_Lnk_4%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                                <div class="col col_4_of_12 prl-4 pull-left">
                                    <div class="sup-ser2-div pull-left">
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser2-img" src="<%= Sup_Ser_Img_5%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <h3 class="sup-ser2-title"><%= Sup_Ser_Title_5%></h3>
                                        <span class="sup-ser2-txt"><%= Sup_Ser_Body_5%></span>
                                        <a class="sup-ser2-lnk" href="<%= Sup_Ser_Lnk_5%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                                <div class="col col_4_of_12 pl-8 pull-left">
                                    <div class="sup-ser2-div pull-left">
                                        <div class="col col_4_of_12">
                                        </div>
                                        <div class="col col_4_of_12">
                                            <img class="sup-ser2-img" src="<%= Sup_Ser_Img_6%>" />
                                        </div>
                                        <div class="col col_4_of_12">
                                        </div>
                                        <h3 class="sup-ser2-title"><%= Sup_Ser_Title_6%></h3>
                                        <span class="sup-ser2-txt"><%= Sup_Ser_Body_6%></span>
                                        <a class="sup-ser2-lnk" href="<%= Sup_Ser_Lnk_6%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <section class="p0 margin-bot-20" runat="server" id="contact_map_wrapper">
                            <div class="col col_12_of_12 sup-cov-map-title"><%= Resources.SITE_Resource.Coverage_Map%></div>
                            <div class="map-holder pt160 pb160">
                                <iframe src="Map.aspx" class="map-iframe"></iframe>
                            </div>
                            <div class="col col_12_of_12 sup-cov-map-footer">
                                <div class="pull-left">
                                    <img src="img/cov_imgs/2g.jpg" class="cov-img"/>
                                    <%= Resources.SITE_Resource.G2_Coverage%>
                                </div>
                                <div class="pull-left pl-20">
                                    <img src="img/cov_imgs/3g.jpg" class="cov-img"/>
                                    <%= Resources.SITE_Resource.G3_Coverage%>
                                </div>
                                <div class="pull-left pl-20">
                                    <img src="img/cov_imgs/4g.jpg" class="cov-img"/>
                                    <%= Resources.SITE_Resource.G4_Coverage%>
                                </div>
                            </div>
                        </section>


                        <div class="container div-body-outer p-50">
                            <div class="row">
                                <div class="col col_6_of_12 pull-left">
                                    <div class="sup-ser3-div ">
                                        <img class="sup-ser3-img" src="<%= Sup_Ser_Img_7%>" />
                                        <h3 class="sup-ser3-title"><%= Sup_Ser_Title_7%></h3>
                                        <span class="sup-ser3-txt"><%= Sup_Ser_Body_7%></span>
                                        <a class="sup-ser3-lnk" href="<%= Sup_Ser_Lnk_7%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                                <div class="col col_6_of_12 pull-left">
                                    <div class="sup-ser3-div ">
                                        <img class="sup-ser3-img" src="<%= Sup_Ser_Img_8%>" />
                                        <h3 class="sup-ser3-title"><%= Sup_Ser_Title_8%></h3>
                                        <span class="sup-ser3-txt"><%= Sup_Ser_Body_8%></span>
                                        <a class="sup-ser3-lnk" href="<%= Sup_Ser_Lnk_8%>"><%= Resources.SITE_Resource.Learn_More%></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <Homepage_Banner_Infographic:Homepage_Banner_Infographic runat="server" ID="Homepage_Banner_Infographic" />
                        <Media_Center:Media_Center runat="server" ID="Media_Center" />
                        <Footer:Footer runat="server" ID="Footer" />
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery.owlcarousel.min.js"></script>
        <script src="js/camera.js"></script>
        <script src="js/CustomScript.js"></script>
        <script src="js/jquery.mobile-1.4.5.js"></script>
        <%--for infographic counter--%>
        <script src="js/waypoints.min.js"></script>
        <script src="js/counterup.min.js"></script>
        <!-- ======== DATE PICIKER ======== -->
        <script src="js/datepicker/bootstrap-datepicker.js"></script>
        <script src="Library/colorbox/jquery.colorbox.js"></script>
        <script>
            $(window).load(function () {
                $('.counter').counterUp({
                    delay: 20,
                    time: 4000
                });
            });
        </script>
        <script>
            $('a').attr('data-ajax', 'false');
            $('input').attr('data-role', 'none');
            $('select').attr('data-role', 'none');
            $('#revealPanel').on('mousewheel DOMMouseScroll', function (e) {
                var e0 = e.originalEvent;
                var delta = e0.wheelDelta || -e0.detail;
                this.scrollTop += (delta < 0 ? 1 : -1) * 30;
                e.preventDefault();
            });
            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;
            function sticky_menu_function() {
                if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }
            $(function () {
                $("#tabs").tabs();
            });
        </script>
        <script>
            function pageLoad() {
                $('.Datepicker').datepicker({
                    dateFormat: 'dd/mm/yy',
                    isDisabled: true
                });
                $('.datepicker').css('display', 'none');
                $(".group1").colorbox({ rel: 'group1', transition: "fade" });
                $(".group2").colorbox({ rel: 'group2', transition: "fade" });
                $(function () {
                    $(".video-colorbox").colorbox({ iframe: true, width: "70%", height: "70%" });
                });
                $(function () {
                    $(".iframe").colorbox({ iframe: true, width: "870px", height: "600px" });
                });
            }
        </script>
    </form>
</body>
</html>
