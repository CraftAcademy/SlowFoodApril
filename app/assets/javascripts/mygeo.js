
var lat; var long;
$(document).ready(function() {
  function mylocation() {
    if (!navigator.geolocation){
      alert("sorry, your browser is not supported");
    }

  navigator.geolocation.getCurrentPosition(success, error);

  function success(position) {
      lat =  position.coords.latitude;
      long = position.coords.longitude;
      alert('Got it');
      $.post('/home/index', {lat:lat, long:long});
  }

  function error(){
    console.log("Unable to retrieve your location");
  }

  }

  var map = new GMaps({
    el: '#map',
    lat: 25.655,
    lng: 52.3455
  });

  map.addMarker({
    lat: 25.6555,
    lng: 52.3455,
    title: 'You',
    infoWindow: {
      content: '<p>There you are!</p>'
    }
  });
});
