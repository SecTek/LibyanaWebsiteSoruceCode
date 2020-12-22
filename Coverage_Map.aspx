<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Coverage_Map, App_Web_coverage_map.aspx.cdcab7d2" %>

<%@ Register Src="~/Controls/Services.ascx" TagPrefix="uc1" TagName="Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        html, body,iframe,#map-canvas {
            margin: 0px !important;
            padding: 0px !important;
            width: 100% !important;
            height: 570px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphImage" runat="Server">
    <div class="inner-header-section-no-img">
        <div class="container">
            <div class="row">
                <div class="col col_12_of_12 breadcrumb-outer">
                    <div class="page-title page-title-no-img" runat="server" id="div_Title">
                    </div>
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx"><%= Resources.SITE_Resource.Home_Page%></a></li>
                        <li id="li_Breadcrumb_Parent" runat="server"></li>
                        <li id="li_Breadcrumb_last" runat="server"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBreadcrumbs" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" Runat="Server">
    <div class="container div-body-outer">
        <div class="row margin-bot-20" runat="server" id="div_body_row">
            <div class="col col_12_of_12" runat="server" id="div_body_inner">
            </div>
        </div>
        <section class="p0 margin-bot-20" runat="server" id="contact_map_wrapper">
            <div class="map-holder pt160 pb160">
                <iframe src="Map.aspx" class="map-iframe"></iframe>
            </div>
        </section>
        <div class="row">
            <div class="col col_12_of_12">
                <img src="img/cov_imgs/2g.jpg" class="cov-img">
                <%= Resources.SITE_Resource.G2_Coverage%>
            </div>
            <div class="col col_12_of_12">
                <img src="img/cov_imgs/3g.jpg" class="cov-img">
                <%= Resources.SITE_Resource.G3_Coverage%>
            </div>
            <div class="col col_12_of_12">
                <img src="img/cov_imgs/4g.jpg" class="cov-img">
                <%= Resources.SITE_Resource.G4_Coverage%>
            </div>
        </div>
<%--        <script>
            var imageUrlProperty = 'img/cm.png';
            var map, historicalOverlay;

            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 6,
                    center: { lat: 28.4590, lng: 17.0288 },
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });

                google.maps.event.addListenerOnce(map, 'idle', function () {
                    var bounds = map.getBounds();

                    var imageBounds = new google.maps.LatLngBounds(bounds.getSouthWest(), bounds.getNorthEast());
                    historicalOverlay = new google.maps.GroundOverlay(
                        imageUrlProperty,
                        imageBounds
                    );
                    historicalOverlay.setOpacity(0.5);
                    historicalOverlay.setMap(map);
                    document.getElementById("map").style.width = '100%';

                });
            }
        </script>
        <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAR8B-LAtFgjQrVvhnSzVPS6E_LT1ZGiLk&amp;callback=initMap">
        </script>--%>
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