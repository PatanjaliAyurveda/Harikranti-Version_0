import 'package:location/location.dart';

class GetLocationForFarm {
  var location = new Location();
  Map<String, double> userLocation;
  //Coordinates coordinates;
  var address;
  var place;
  // Future getAddress(var value) async {
  //   coordinates = Coordinates(value["latitude"], value["longitude"]);
  //   address = await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //   setState(() {
  //     print(address.first.locality);
  //     place = address.first;
  //   });
  // }
  Future<Map<String, double>> getLocation() async {
    Map<String, double> loc;
    LocationData currentLocation;

    try {
      currentLocation = (await location.getLocation());
      loc = {
        "latitude": currentLocation.latitude,
        "longitude": currentLocation.longitude,
      };
    } catch (e) {
      currentLocation = null;
    }
    return loc;
  }
}
