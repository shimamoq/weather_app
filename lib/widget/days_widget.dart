
import 'package:flutter/material.dart';
import 'package:weather_app/helpers/helper_functions.dart';


class DaysWidget extends StatelessWidget {
  const DaysWidget({super.key,required this.time,
  required this.temperature});

  final String time;
 final String temperature;
//  final String relativehumidity2M;
//  final String windspeed10M;

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
      child: Container(
       decoration: const BoxDecoration(
           gradient: LinearGradient(
               colors: [Color.fromARGB(255, 166, 185, 199), Color.fromARGB(255, 166, 185, 199)],
               begin: Alignment.bottomCenter,
               end: Alignment.topCenter)),
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Row(
           children: [
                     Text(
         convertTo12HourFormat( time.toString().substring(11,time.toString().length)),
                 style: const TextStyle(
                     color: Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w300),
               ),
             SizedBox(width: 250),
             Column(
               children: [
               Image.asset(double.parse(temperature)> 20 && double.parse(temperature)<25
               
             
                ?"assets/cloudy.png" : "assets/sun_cloudy.png",width:35,height: 35,),
              
                 Text(
               temperature.toString(),
               style: const TextStyle(
                   color: Colors.white,
                   fontSize: 14,
                   fontWeight: FontWeight.w500),
             ),
               ],
             ),
          
            //  Text(
            //    relativehumidity2M.toString(),
            //    style: const TextStyle(
            //        color: Colors.white,
            //        fontSize: 14,
            //        fontWeight: FontWeight.w500),
            //  ),
            //  Text(
            //    windspeed10M.toString(),
            //    style: const TextStyle(
            //        color: Colors.white,
            //        fontSize: 14,
            //        fontWeight: FontWeight.w500),
            //  ),
           ],
         ),
       ),
            ),
    );
  }
}

