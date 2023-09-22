import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherProvider with ChangeNotifier {
 List<Hourly> hourly = [];
WeatherModel? todayWeather;
  bool isLoading = true;
  bool isFailed = false;

  setLoading(bool status) {
    Timer(const Duration(milliseconds: 50), () {
      isLoading = status;
      notifyListeners();
    });
  }

  setFailed(bool status) {
    Timer(const Duration(milliseconds: 50), () {
      isFailed = status;
      notifyListeners();
    });
  }

  fetchWeather() async {
    setLoading(true);

    final response =
        await http.get(Uri.parse("https://api.open-meteo.com/v1/forecast?latitude=32.116669&longitude=20.066668&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"));

    if (response.statusCode == 200) {
      // var decodedData = json.decode(response.body);
      // for (var x in decodedData) {
      //   Weatherr.add(WeatherModel.fromJson(x));
      // }
      todayWeather = WeatherModel.fromJson(json.decode(response.body));
      notifyListeners();
    } else {
      setFailed(true);
    }

    setLoading(false);
  }
  fetchHourly() async {
    setLoading(true);

    final response =
        await http.get(Uri.parse("https://api.open-meteo.com/v1/forecast?latitude=32.116669&longitude=20.066668&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"));

    if (response.statusCode == 200) {
      var decodedData = json.decode(response.body)['data'];
      for (var x in decodedData) {
        hourly.add(Hourly.fromJson(x));
      }
    } else {
      setFailed(true);
    }

    setLoading(false);
  }
        notifyListeners();

}