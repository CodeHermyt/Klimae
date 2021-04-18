import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' as dotenv;


class WeatherService {
  static final _api = dotenv.env['WEATHER_API_KEY'];
  static const String _baseUrl =
      'http://api.weatherstack.com/current?access_key=';

  Future getWeatherInfo(String city) async {
    String url = '$_baseUrl$_api&query=$city';
    http.Response response = await http.get(Uri.parse(url));
    String res = response.body;
    print(res);
    Map<String, dynamic> json = jsonDecode(res);
    print(json);
  }
}
