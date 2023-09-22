import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
 import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/widget/hourly_widget.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
       void initState() {
     Provider.of<WeatherProvider>(context, listen: false).fetchWeather();
       super.initState();
     }
 bool isValidForm = false;
  // validation() async {
  //   if (temperature>30&&
  //        ) {
  //     isValidForm = true;
  //   } else {
  //     isValidForm = false;
  //   }
  //   setState(() {});
  // }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Consumer<WeatherProvider>(
       builder: (context,weatherConsumer,child) {
      return Scaffold(
   
            backgroundColor: Color.fromARGB(255, 166, 185, 199),
body:    
      //  Center(child:weatherConsumer.isLoading
      //         ? const CircularProgressIndicator(color: Colors.white,strokeWidth: 2,)
      //         : SingleChildScrollView(
        //  child:
          SafeArea(
             
              child: Padding(
              
                padding: const EdgeInsets.all(130),
            
                child:   Column(
              
                  children: [
              
                        Text(
                          weatherConsumer.todayWeather!.currentWeather.temperature.toString(),
              
              
                          style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                        ),
              
                             Image.asset(weatherConsumer.todayWeather!.currentWeather.temperature > 10 &&
              
                              weatherConsumer.todayWeather!.currentWeather.temperature < 20 ? 
            
                              "assets/cloudy.png": weatherConsumer.todayWeather!.currentWeather.temperature >20 &&

                               weatherConsumer.todayWeather!.currentWeather.temperature<30 ? "assets/sun_cloudy.png" :"assets/sunny.png"),
          
              Text(weatherConsumer.todayWeather!.currentWeather.weathercode.toString(),
          
                          style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                          ),
              SizedBox(
                height: 200,
                width: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {HourlyWidget:weatherConsumer.hourly[index];
                          
// Text("hh");
// color:Colors.blue;
                  }),
              )
                //  ListView.builder(
                             
                //                      padding: const EdgeInsets.all(24),
                             
                //                   itemCount: weatherConsumer .hourly.length,
                             
                //                      itemBuilder: (context, index) {
                             
                //                        Provider.of<WeatherProvider>(context, listen: false).fetchHourly();
                             
                //      Icon(Icons.add_a_photo);
                             
                //                 },scrollDirection: Axis.vertical,),
                   
              
                   
              
                  ],
              
              
                ),
              
                  
              ),
            ),
      //  ),
       ) ;
      //  );
  
  });}
  
                 

            
}


 
        
    
      
  

