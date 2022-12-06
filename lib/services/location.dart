import 'package:location/location.dart';


class GLocation {
  late double latitude;
  late double longitude;
  Location location = Location();
  late LocationData locationData;

Future getCurrentLocation() async {
  try{

    location.requestPermission();
    locationData = await location.getLocation();
  }
  catch(e){
    print(e);
  }
  latitude = locationData.latitude!;
  longitude = locationData.longitude!;

}

}