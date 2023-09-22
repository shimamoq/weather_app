import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class DetaildWeatherScreen extends StatefulWidget {
  const DetaildWeatherScreen({super.key,required this.hourly});
final Hourly hourly;
  @override
  State<DetaildWeatherScreen> createState() => _DetaildWeatherScreenState();
}

class _DetaildWeatherScreenState extends State<DetaildWeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}