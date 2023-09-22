import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/detailed_weather_screen.dart';


class HourlyWidget extends StatelessWidget {
  const HourlyWidget({super.key, required this.hourly});

  final Hourly hourly;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => DetaildWeatherScreen(
                      hourly: hourly,
                    )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
                 colors: [Colors.black87, Colors.transparent],
                 begin: Alignment.bottomCenter,
                 end: Alignment.topCenter)),
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 hourly.time.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w300),
               ),
               Image.asset("assets/cloudy.png"),
               Text(
                 hourly.temperature2M.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w500),
               ),
             ],
           ),
         ),
              ),
      ),
    );
  }
}

