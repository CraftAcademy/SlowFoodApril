function setGeolocation(callback) {
    var test_env = $('#map').data().testEnv;
    var lat, long, coords;
    if (test_env === false) {
        var options = {
            enableHighAccuracy: true
        };

        function success(position) {
            coords = {
                lat: position.coords.latitude,
                long: position.coords.longitude
            };
            callback(coords);

        }

        function error(err) {
           // console.warn(`ERROR(${err.code}): ${err.message}`);
        }

        navigator.geolocation.getCurrentPosition(success, error, options);
    } else {
        coords = {
            lat: -25.838572,
            long: 28.209190
        };
        console.log('We are in the else block');
        callback(coords);

    }
}

$(document).ready(function () {
    var coords;
    setGeolocation(function (res) {
        coords = res;
        var map;
        map = new GMaps({el: '#map', lat: coords.lat, lng: coords.long});
        console.log('Map is created');
        map.setCenter(coords.lat, coords.long);
        console.log('Map is centered');
        map.addMarker({
            lat: coords.lat,
            lng: coords.long,
            title: 'You',
            infoWindow: {
                content: '<p>Hey You!</p>'
            }
        });
        console.log('Markers count: ' + map.markers.length);
        console.log('Marker info : (lat) ' + map.markers[0].position.lat());
        console.log('Marker info : (lng) ' + map.markers[0].position.lng());
    });


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
