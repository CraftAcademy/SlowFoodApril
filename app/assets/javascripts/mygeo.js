
function setGeolocation() {
    var test_env = $('#map').data().testEnv;
    var coords;
    var latitude;
    var longitude;
    if (test_env === false) {
        // GMaps.geolocate({
        //     success: function(position) {
        //         latitude = position.coords.latitude;
        //         longitude = position.coords.longitude;
        //         coords =  {latitude: latitude, longitude: longitude};
        //     },
        //     error: function(error) {
        //         alert('Geolocation failed: ' + error.message);
        //     },
        //     not_supported: function() {
        //         alert('Your browser does not support geolocation');
        //     }
        //
        // });
        navigator.geolocation.getCurrentPosition(function(position) {
            lat = position.coords.latitude;
            long = position.coords.longitude;
            coords =  {latitude: lat, longitude: long};
        });
    } else {
        latitude = -25.838572;
        longitude = 28.209190;
        coords =  {latitude: latitude, longitude: longitude};
    }
    return coords;
}

$(document).ready(function() {
    var lat;
    var long;
    var map;

    setGeolocation();

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            lat = position.coords.latitude;
            long = position.coords.longitude;
            map = new GMaps({el: '#map', lat: lat, lng: long});
        });
    } else {
        map = new GMaps({el: '#map', lat: latitude, lng: longitude});
    }
    // var longitude = setGeo.longitude;
    // var latitude = setGeo.latitude;
    // var latitude = -25.838572;
    // var longitude = 28.209190;
    // map.setCenter(lat, long);

    // GMaps.geolocate({
    //     success: function() {
    //
    //         map.setCenter(lat, long);
    //
    //         map.addMarker({
    //             lat: lat,
    //             lng: long,
    //             title: 'You',
    //             infoWindow: {
    //                 content: '<p>Hey You!</p>'
    //             }
    //         });
    //
    //         map.drawOverlay({
    //             lat: lat,
    //             lng: long,
    //             layer: 'floatPane',
    //             content: '<div class="overlay">Right here!</div>'
    //             });
    //
    //         map.addMarker({
    //             lat: lat - 0.01,
    //             lng: long - 0.01,
    //             title: 'You',
    //             infoWindow: {
    //                 content: '<p>Hey You!</p>'
    //             }
    //         });
    //
    //         map.drawOverlay({
    //             lat: lat - 0.01,
    //             lng: long - 0.01,
    //             layer: 'floatPane',
    //             content: '<div class="overlay">Next here!</div>'
    //             });
    //
    //
    //     },
    //
    //     error: function(error) {
    //         alert('Geolocation failed: ' + error.message);
    //     },
    //     not_supported: function() {
    //         alert('Your browser does not support geolocation');
    //     }
    //
    // });

});
