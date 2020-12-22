<%@ page language="C#" autoeventwireup="true" inherits="Services_Centers_Popup, App_Web_services_centers_popup.aspx.cdcab7d2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href='<%$ Resources:SITE_Resource, CSS_Service_Center_Popup%>' rel="stylesheet" />
    <style type="text/css">
        html, body, iframe, #map-canvas-popup {
            height: 600px !important;
            margin: 0px !important;
            padding: 0px !important;
        }
    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFPvOTdrKWNOYTuNhnne77N1oqdyBUdBo"></script>
    <script type="text/javascript">
        var gmap;
        function initialize() {
            var Latitude = document.getElementById('hfLatitude').value;
            var Longitude = document.getElementById('hfLongitude').value;
            var myLatlng = new google.maps.LatLng(Latitude, Longitude);
            var mapOptions = { zoom: 9, center: myLatlng, mapTypeId: google.maps.MapTypeId.HYBRID };
            gmap = new google.maps.Map(document.getElementById('map-canvas-popup'), mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: gmap,
                title: document.getElementById('lblName').innerText
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
        $(document).ready(function () {
            setTimeout(function () { $(".dismissButton").click(); }, 1500);

        });
    </script>
</head>
<body onload="initialize()">
    <form id="Form1" runat="server">
        <div class="OuterDiv">
            <div class="InnerDiv">
                <asp:HiddenField runat="server" ID="hfLatitude"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="hfLongitude"></asp:HiddenField>
                <fieldset class="fieldsetLeft">
                    <legend><%= Resources.SITE_Resource.ServiceCenter%>
                    </legend>
                    <div class="PopupTitle" runat="server" id="divName">
                        <asp:Label runat="server" ID="lblName"></asp:Label>
                    </div>
                    <div class="PopupTitle" runat="server" id="divPhone">
                        <span><%= Resources.SITE_Resource.Phone_Number%> </span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblPhone" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                    <div class="PopupTitle" runat="server" id="divFax">
                        <span><%= Resources.SITE_Resource.Fax%></span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblFax" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                    <div class="PopupTitle" runat="server" id="divEMail">
                        <span><%= Resources.SITE_Resource.Email%> </span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblEmail" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                    <div class="PopupTitle" runat="server" id="divMorning">
                        <span><%= Resources.SITE_Resource.Morning_Period%> </span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblMorning" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                    <div class="PopupTitle" runat="server" id="divEvening">
                        <span><%= Resources.SITE_Resource.Evening_Period%> </span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblEvening" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                    <div class="PopupTitle" runat="server" id="divAddress">
                        <span><%= Resources.SITE_Resource.Address%></span>
                        <div class="PopupText">
                            <asp:Label runat="server" ID="lblAddress" CssClass="lblData"></asp:Label>
                        </div>
                    </div>
                </fieldset>
            </div>
            <fieldset class="fieldsetRight">
                <legend><%= Resources.SITE_Resource.Map%>
                </legend>
                <div id="map-canvas-popup"></div>
            </fieldset>
        </div>
    </form>
</body>
</html>
