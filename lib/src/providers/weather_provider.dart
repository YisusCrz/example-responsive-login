import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:example_responsive_login/src/models/weather_model.dart';

class WeatherProvider {

  final url = 'https://api.weatherbit.io/v2.0/current?city=';
  final city = 'Puerto%20Pe%C3%B1asco,MX';
  final apiKey = '&key=1c1d766b2a5a45ce9b8481b2f814a04e';

  Future<Weather> getWeather() async{

    final resp = await http.get( url + city + apiKey );

    final data = json.decode(resp.body);

    final weather = Weather.fromJson(data);

    return weather;


  }


}

final weatherProvider = new WeatherProvider();