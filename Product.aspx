<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Product, App_Web_product.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link href="phone_settings/doc/jquery.frame-carousel.min.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li id="li_Breadcrumb_Parent" runat="server" visible="false"></li>
                    <li id="li_Breadcrumb_last" runat="server"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>

            <div class="col col_12_of_12" id="divPhoneSettings" runat="server" visible="false">
                <div id="myRadioGroup" class="phone-settings-radio">
                    <input type="radio" name="cars" checked="checked" value="2"/>
                    <%= Resources.SITE_Resource.IOS%>
                    <input type="radio" name="cars" value="3" class="ml-15"/>
                    <%= Resources.SITE_Resource.Android%>
                    <div align="center">
                        <div id="Cars2" class="desc">
                            <div class="fc-ios"></div>
                        </div>
                        <div id="Cars3" class="desc" style="display: none;">
                            <div class="fc-android"></div>
                        </div>
                    </div>
                </div>
                <script>window.jQuery || document.write('<script src="phone_settings/jquery-1.11.3.min.js"><\/script>')</script>
                <script src="phone_settings/doc/jquery.frame-carousel.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("input[name$='cars']").click(function () {
                            var test = $(this).val();

                            $("div.desc").hide();
                            $("#Cars" + test).show();
                        });
                    });
                    $(function () {

                        $('.fc-ios').frameCarousel({
                            frame: 'phone_settings/frame_img/ios.png',
                            boundingBox: { left: '6.6%', top: '12.3%', width: '86.8%', height: '75.3%' },
                            frameSize: [{ width: 265 }],
                            controlsPosition: { top: '100%' },
                            images: ['phone_settings/imgs/ios/1.jpg',
                                    'phone_settings/imgs/ios/2.jpg',
                                    'phone_settings/imgs/ios/3.jpg',
                                    'phone_settings/imgs/ios/4.jpg',
                                    'phone_settings/imgs/ios/5.jpg',
                                    'phone_settings/imgs/ios/6.jpg']
                        });
                    });
                    $(function () {

                        $('.fc-android').frameCarousel({
                            frame: 'phone_settings/frame_img/android.png',
                            boundingBox: { left: '6.6%', top: '12.3%', width: '86.8%', height: '75.3%' },
                            frameSize: [{ width: 265 }],
                            controlsPosition: { top: '100%' },
                            images: ['phone_settings/imgs/android/1.jpg',
                                    'phone_settings/imgs/android/2.jpg',
                                    'phone_settings/imgs/android/3.jpg',
                                    'phone_settings/imgs/android/4.jpg',
                                    'phone_settings/imgs/android/5.jpg',
                                    'phone_settings/imgs/android/6.jpg',
                                    'phone_settings/imgs/android/7.jpg',
                                    'phone_settings/imgs/android/8.jpg',
                                    'phone_settings/imgs/android/9.jpg',
                                    'phone_settings/imgs/android/10.jpg',
                                    'phone_settings/imgs/android/11.jpg']
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12" id="div_body" runat="server">
                <asp:Literal ID="ltrBody" runat="server" Text=""></asp:Literal>
            </div>
            <div class="col col_12_of_12" id="div_body_not_available" runat="server" visible="false">
                <div class="content-title" runat="server" id="div_not_available">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
    <div class="div-cphBanner">
        <div class="container ">
            <div class="row">
                <div class="col col_12_of_12">
                    <uc1:Services runat="server" ID="Services" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
    <asp:Literal runat="server" ID="lit_Footer_Banner"></asp:Literal>
</asp:Content>
