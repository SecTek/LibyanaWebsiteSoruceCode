<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Media_Center, App_Web_media_center.aspx.cdcab7d2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Library/sliderPro/jquery.sliderPro.js"></script>
    <script type="text/javascript">
        $(document).ready(function ($) {
            $('#example1').sliderPro({
                width: 755,
                height: 350,
                arrows: true,
                buttons: false,
                waitForLayers: true,
                thumbnailWidth: 245,
                thumbnailHeight: 270,
                thumbnailPointer: true,
                autoplay: false,
                autoScaleLayers: false,
                breakpoints: {
                    500: {
                        thumbnailWidth: 230,
                        thumbnailHeight: 230
                    }
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section" runat="server" id="div_header_image">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
    <div class="container page-without-header">
        <div class="row">
            <div class="col col_12_of_12 breadcrumb-outer">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                    <li runat="server" id="li_pagename"></li>
                </ul>
                <div class="page-title" runat="server" id="div_Title">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="Server">
    <div class="container div-body-outer">
        <div class="row">
            <div class="col col_12_of_12">
                <div class="media-resources">
                    <%= Resources.SITE_Resource.Media_Library%>
                </div>
                <div id="example1" class="slider-pro">
                    <div class="sp-thumbnails">
                        <div class="sp-thumbnail" style="background-image: url('img/mc-news.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_news">
                            </div>
                        </div>
                        <div class="sp-thumbnail" style="background-image: url('img/mc-event.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_event">
                            </div>
                        </div>
<%--                        <div class="sp-thumbnail" style="background-image: url('img/mc-publication.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_publication">
                            </div>
                        </div>--%>
                        <div class="sp-thumbnail" style="background-image: url('img/mc-albums.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_albums">
                            </div>
                        </div>
                        <div class="sp-thumbnail" style="background-image: url('img/mc-video.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_video">
                            </div>
                        </div>
<%--                        <div class="sp-thumbnail" style="background-image: url('img/mc-media_contact.jpg')">
                            <div class="box-inner" runat="server" id="div_inner_box_media_contact">
                            </div>
                        </div>--%>
                    </div>
                    <div class="sp-slides">
                        <%--News--%>
                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_news"></h3>
                                <div class="text" runat="server" id="div_text_news">
                                </div>
                                <a href="News.aspx">
                                    <div class="link" runat="server" id="div_link_news">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-news.jpg" />
                            </div>
                        </div>
                        <%--Events--%>
                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_event"></h3>
                                <div class="text" runat="server" id="div_text_event">
                                </div>
                                <a href="Events.aspx">
                                    <div class="link" runat="server" id="div_link_event">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-event.jpg" />
                            </div>
                        </div>
                        <%--Publication--%>
<%--                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_publication"></h3>
                                <div class="text" runat="server" id="div_text_publication">
                                </div>
                                <a href="Publications.aspx">
                                    <div class="link" runat="server" id="div_link_publication">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-publication.jpg" />
                            </div>
                        </div>--%>
                        <%--Albums--%>
                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_albums"></h3>
                                <div class="text" runat="server" id="div_text_albums">
                                </div>
                                <a href="Albums.aspx">
                                    <div class="link" runat="server" id="div_link_album">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-albums.jpg" />
                            </div>
                        </div>
                        <%--Video--%>
                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_video"></h3>
                                <div class="text" runat="server" id="div_text_video">
                                </div>
                                <a href="Videos.aspx">
                                    <div class="link" runat="server" id="div_link_video">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-video.jpg" />
                            </div>
                        </div>
                        <%--Media Contact--%>
<%--                        <div class="sp-slide">
                            <div class="sp-slide-left">
                                <h3 runat="server" id="h3_media_contact"></h3>
                                <div class="text" runat="server" id="div_text_media_contact">
                                </div>
                                <a href="Media_Contacts.aspx">
                                    <div class="link" runat="server" id="div_link_media_contact">
                                    </div>
                                </a>
                            </div>
                            <div class="sp-slide-right">
                                <img src="img/mc-media_contact.jpg" />
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBanner" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphBanner2" runat="Server">
</asp:Content>

