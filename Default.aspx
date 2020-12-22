<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_default.aspx.cdcab7d2" %>

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
<head runat="server">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-123420029-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-123420029-1');
    </script>

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
    <link rel="stylesheet" href="Library/colorbox/example1/colorbox.css" />
    <!-- ======== RESPONSIVE ======== -->
    <link rel="stylesheet" media="(max-width:768px)" href="css/responsive-0.css" />
    <link rel="stylesheet" media="(min-width:769px) and (max-width:992px)" href="css/responsive-768.css" />
    <link rel="stylesheet" media="(min-width:993px) and (max-width:1200px)" href="css/responsive-992.css" />
    <link rel="stylesheet" media="(min-width:1201px)" href="css/responsive-1200.css" />
    <!-- ======== GOOGLE FONTS ======== -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,300,300italic,400italic,700,700italic,600italic,600" />
    <link href="css/swiper.min.css" rel="stylesheet" />
    <link href='<%$ Resources:SITE_Resource, CSS%>' rel="stylesheet" />
    <link rel="stylesheet" media="(min-width:1px) and (max-width:767px)" href="<%$ Resources:SITE_Resource, CSS_0_768%>" />
    <link rel="stylesheet" media="(min-width:768px) and (max-width:1200px)" href="<%$ Resources:SITE_Resource, CSS_769_1024%>" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.ui.min.js" type="text/javascript"></script>
</head>
<body onscroll="sticky_menu_function();">
    <form id="form1" runat="server">
        <div data-role="none" id="pageone">
            <MobileMenu:MobileMenu runat="server" ID="MobileMenu" />
            <div data-role="main" class="ui-content">
                <asp:ScriptManager runat="server" ID="sc"></asp:ScriptManager>
                <div class="preloader"></div>
                <div id="wrapper" class="wide">
                    <Menus:Menus runat="server" ID="Menus" />
                    <div class="page-outer-body">
                        <Rotater:Rotater runat="server" ID="Rotater" />
                        <Homepage_Banner_Under_Rotator:Homepage_Banner_Under_Rotator runat="server" ID="Homepage_Banner_Under_Rotator" />

                        <Featured_Offers:Featured_Offers runat="server" ID="Featured_Offers" />
                        <Homepage_Banner_Under_FeaturedOffers:Homepage_Banner_Under_FeaturedOffers runat="server" ID="Homepage_Banner_Under_FeaturedOffers" />
                        <Services:Services runat="server" ID="Services" />
                        <Homepage_Banner_Under_Services:Homepage_Banner_Under_Services runat="server" ID="Homepage_Banner_Under_Services" />
                        <Featured_Offers:Packages runat="server" ID="Packages" />

                        <section class="help-where-to-find-section">
                            <div class="container ">
                                <div class="row">
                                    <div class="col col_6_of_12 ">
                                        <Help_and_Support:Help_and_Support runat="server" ID="Help_and_Support" />
                                    </div>
                                    <div class="col col_6_of_12 ">
                                        <WhereToFindUs:WhereToFindUs runat="server" ID="WhereToFindUs" />
                                    </div>
                                </div>
                            </div>
                        </section>
                        <Homepage_Banner_Infographic:Homepage_Banner_Infographic runat="server" ID="Homepage_Banner_Infographic" />
                        <Media_Center:Media_Center runat="server" ID="Media_Center" />
                        <Footer:Footer runat="server" ID="Footer" />
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery.owlcarousel.min.js"></script>
        <script src="js/swiper.min.js"></script>
        <script src="js/CustomScript.js"></script>
        <script src="js/jquery.mobile-1.4.5.js"></script>
        <%--for infographic counter--%>
        <script src="js/waypoints.min.js"></script>
        <script src="js/counterup.min.js"></script>
        <script>
            $(window).load(function () {
                $('.counter').counterUp({
                    delay: 20,
                    time: 4000
                });
            });
        </script>
        <%--end infographic counter--%>

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

            var swiper = new Swiper('.swiper-container', {
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: {
                    delay: 6000,
                    disableOnInteraction: false,
                },
                pagination: {
                    el: '.swiper-pagination',
                    clickable: true,
                },
                on: {
                    slideChangeTransitionStart: function () {
                        $('.card').hide(0);
                    },
                    slideChangeTransitionEnd: function () {
                        $('.card').show(1000);
                    },
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            });
        </script>
    </form>
</body>
</html>
