
import 'package:flutter/material.dart';


class HourlyWidget extends StatelessWidget {
  const HourlyWidget({super.key,required this.time,
  required this.temperature,required this.relativehumidity2M,required this.windspeed10M});

  // final Hourly hourly;
  final String time;
 final String temperature;
 final String relativehumidity2M;
 final String windspeed10M;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
    //    Navigator.push(
      //      context,
      //      CupertinoPageRoute(
        //        builder: (context) => DetaildWeatherScreen(
          //            hourly: hourly,
            //        )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
                 colors: [Colors.white, Colors.transparent],
                 begin: Alignment.bottomCenter,
                 end: Alignment.topCenter)),
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 time.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w300),
               ),
               Image.asset("assets/cloudy.png"),
               Text(
                 temperature.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w500),
               ),
               Text(
                 relativehumidity2M.toString(),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w500),
               ),
               Text(
                 windspeed10M.toString(),
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

