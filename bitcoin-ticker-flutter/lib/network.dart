import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiCoin {
  static const String apiKey = 'D9718388-C0DA-4CCB-93DF-A06E0E753EF7';

  static const String url = 'https://rest.coinapi.io/v1/exchangerate/';

  Future getExchangeRate(String coin, String currency) async {
    String request = url + coin + "/" + currency + "?apikey=" + apiKey;

    var response = await http.get(request);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var rate = jsonResponse['rate'];
      return rate;
    } else {
      print('Request failed with status: ${response.statusCode}.');

      throw 'Problem with the get request';
    }
  }
}
