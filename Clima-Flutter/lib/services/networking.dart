import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:clima/services/response.dart';

class Networking {
  String _url = 'http://api.openweathermap.org/data/2.5/weather';
  String _key = 'f5579a8817af1e74e6b02e18b6b864cc';

  Future<City> getWeatherByCoordinates(double lat, double long) async {
    City city = null;
    String units = 'metric';

    String urlRequest = _url +
        '?lat=' +
        lat.toString() +
        '&lon=' +
        long.toString() +
        '&units=' +
        units +
        '&appid=' +
        _key;
    print(urlRequest);
    var response = await http.get(urlRequest);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      city = City.fromJson(jsonResponse);
      print('Nome da cidade: ' + city.name);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return city;
  }

  Future<City> getWeatherByCityName(String cityName) async {
    City city = null;
    String units = 'metric';

    String urlRequest =
        _url + '?q=' + cityName + '&units=' + units + '&appid=' + _key;
    print(urlRequest);
    var response = await http.get(urlRequest);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      city = City.fromJson(jsonResponse);
      print('Nome da cidade: ' + city.name);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return city;
  }
}
