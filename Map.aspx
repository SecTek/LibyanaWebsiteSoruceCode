<%@ page language="C#" autoeventwireup="true" inherits="Map, App_Web_map.aspx.cdcab7d2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta content="" charset="utf-8" />
    <style type="text/css">
        html, body, iframe, #map-canvas {
            height: 100% !important;
            margin: 0px !important;
            padding: 0px !important;
        }
    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFPvOTdrKWNOYTuNhnne77N1oqdyBUdBo"></script>
    <script type="text/javascript">
        var overlay;
        USGSOverlay.prototype = new google.maps.OverlayView();

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map-canvas'), {
                zoom: 6,
                center: { lat: 28.4590, lng: 17.0288 }
            });

            var bounds = new google.maps.LatLngBounds(
                new google.maps.LatLng(22.4590, 3.0288),
                new google.maps.LatLng(33.9590, 30.9288));
            var srcImage = 'img/cm.png';
            overlay = new USGSOverlay(bounds, srcImage, map);
        }

        function USGSOverlay(bounds, image, map) {

            this.bounds_ = bounds;
            this.image_ = image;
            this.map_ = map;
            this.div_ = null;
            this.setMap(map);
        }
        USGSOverlay.prototype.onAdd = function () {

            var div = document.createElement('div');
            div.style.borderStyle = 'none';
            div.style.borderWidth = '0px';
            div.style.position = 'absolute';
            var img = document.createElement('img');
            img.src = this.image_;
            img.style.width = '100%';
            img.style.height = '100%';
            img.style.position = 'absolute';
            img.style.opacity = '0.6';
            div.appendChild(img);

            this.div_ = div;
            var panes = this.getPanes();
            panes.overlayLayer.appendChild(div);
        };

        USGSOverlay.prototype.draw = function () {

            var overlayProjection = this.getProjection();
            var sw = overlayProjection.fromLatLngToDivPixel(this.bounds_.getSouthWest());
            var ne = overlayProjection.fromLatLngToDivPixel(this.bounds_.getNorthEast());
            var div = this.div_;
            div.style.left = sw.x + 'px';
            div.style.top = ne.y + 'px';
            div.style.width = (ne.x - sw.x) + 'px';
            div.style.height = (sw.y - ne.y) + 'px';
        };
        USGSOverlay.prototype.onRemove = function () {
            this.div_.parentNode.removeChild(this.div_);
            this.div_ = null;
        };

        google.maps.event.addDomListener(window, 'load', initMap);
        
        $(document).ready(function () {
            setTimeout(function () { $(".dismissButton").click(); }, 1500);
        });
    </script>
    <%--    <script type="text/javascript">
    <%= Store_Script %>
    </script>--%>
</head>
<body>
    <div id="map-canvas"></div> 
</body>
</html>
