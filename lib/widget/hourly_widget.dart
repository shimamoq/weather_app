
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/helpers/helper_functions.dart';
import 'package:weather_app/models/weather_model.dart';
// import 'package:weather_app/models/days_model.dart';


class HourlyWidget extends StatelessWidget {
  const HourlyWidget({super.key,required this.time,
  required this.temperature,required this.relativehumidity2M,required this.windspeed10M, required this.hourlyUnites});

  final HourlyUnits hourlyUnites;
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
            if (kDebugMode) {
              print("TIME  $time");
            }
      },
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(60),
        child: Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
                 colors: [Color.fromARGB(255, 243, 174, 85), Color.fromARGB(255, 166, 185, 199)],
                 begin: Alignment.bottomCenter,
                 end: Alignment.topCenter)),
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
         convertTo12HourFormat( time.toString().substring(11,time.toString().length)), 
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w300),)
               ,
               
               Stack(
                 children: [
                   Image.asset(double.parse(temperature)> 20 && double.parse(temperature)<25
                   
             
                    ?"assets/cloudy.png" : "assets/sun_cloudy.png",width:100,height: 100,),
           
           
           if(DateTime.parse(time).hour >=18)
              Positioned(
                right: 8,
                bottom: 8,
                child: Image.asset("assets/sunset.png"),width: 25,height: 25,)   ],
               ),
               Text(
                 "$temperature ${hourlyUnites.temperature2M}",
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

