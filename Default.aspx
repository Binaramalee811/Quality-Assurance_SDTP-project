<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="login.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Locations on Map</title>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQ2cUV7lBziW4ObNkQOdz9IPtgV_zJJIc&callback=initMap" async defer></script>
    <script>
        var map;

        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 6.8477, lng: 80.016 },
                zoom: 10
            });

            // Add markers for the specified locations
            var markers = [
                { position: { lat: 6.8477, lng: 80.016 }, title: 'Shared Apartment Homagama' },
                { position: { lat: 6.8563, lng: 80.0060 }, title: 'Second Location' },
                // Add more locations as needed
                { position: { lat: 6.8572, lng: 80.0053 }, title: 'Third Location' },
                { position: { lat: 6.8272, lng: 80.0059 }, title: 'Third Location' }
            ];

            // Loop through the markers array and add markers to the map
            for (var i = 0; i < markers.length; i++) {
                addMarker(markers[i]);
            }
            var contentString =
                '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h1 id="firstHeading" class="firstHeading">Shared Apartment Homagama</h1>' +
                '<div id="bodyContent">' +
                '<p>Description: Harmony Student Village offers a warm and inclusive community-centered living environment for students in Homagama, Pitipana. Our accommodation prioritizes affordability, sustainability, and fostering meaningful connections among residents.</p>' +
                '<p><img src="images/atkinson-twin-2.png" width="200" height="150"></p>' +
                '<p>Address: No 26 Katugedara road Homagama Pitipana</p>' +
                '<a href="tel:0742890254"><img src="images/download.png" alt="Phone Icon" width="32" height="32"></a>' + '<button onclick="showDetails()"  margin-top:-30px >Phone: 0742890254</button>' +
                '</br>' +
                '</div>' +
                '</div>';

            // Function to add marker with click event listener
            function addMarker(markerInfo) {
                var marker = new google.maps.Marker({
                    position: markerInfo.position,
                    map: map,
                    title: markerInfo.title
                });

                var infoWindow = new google.maps.InfoWindow({
                    content: markerInfo.title
                });

                // Attach click event listener to open info window
                marker.addListener('click', function () {
                    infoWindow.open(map, marker);
                });
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map" style="height: 400px; width: 100%;"></div>
    </form>
</body>
</html>