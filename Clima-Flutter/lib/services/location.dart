import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude, _longitude;

  double get latitude {
    return _latitude;
  }

  double get longitude {
    return _longitude;
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      _latitude = position.latitude;
      _longitude = position.longitude;
      print('latitude $latitude');
      print('longitude $longitude');
    } catch (e) {
      print(e);
      print('Não foi possível obter a localização');
    }
  }
}
