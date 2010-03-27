/**
 * creates Marker and InfoWindow on a Map() named 'map'
 * saves marker to markerArray and markerBounds
 * @param options object for Marker and InfoWindow
 * @author Esa 2009
 */
var infoWindow = new google.maps.InfoWindow();
var markerBounds = new google.maps.LatLngBounds();
var markerArray = [];
 
function makeMarker(options){
  var pushPin = new google.maps.Marker({map:map});
  pushPin.setOptions(options);
  google.maps.event.addListener(pushPin, "click", function(){
    infoWindow.setOptions(options);
    infoWindow.open(map, pushPin);
  });
  markerBounds.extend(options.position);
  markerArray.push(pushPin);
  return pushPin;
}

google.maps.event.addListener(map, "click", function(){
  infoWindow.close();
});