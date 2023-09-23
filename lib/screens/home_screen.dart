
import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
 import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/widget/hourly_widget.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
// final Hourly hourly;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
       @override
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
        // floatingActionButton: FloatingActionButton(onPressed: (){Provider.of<WeatherProvider>(context , listen: false).fetchWeather();},child: Text(weatherConsumer.todayWeather!.hourlyUnits.time.toString()),),
   appBar: AppBar(
      backgroundColor:  const Color.fromARGB(255, 166, 185, 199),
      elevation: 0.0,
      title: const Text("Weather App",style: TextStyle(color: Colors.white),),
      centerTitle: true,
      leading: IconButton(onPressed: () {
        
      },icon: const Icon(Icons.menu),
      color: Colors.white,
      ),
   ),
            backgroundColor: const Color.fromARGB(255, 166, 185, 199),
body:  Center(
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  
    children: [

                                         Image.asset(
                                  
                                          weatherConsumer.todayWeather!.currentWeather.temperature > 10 &&
              
                              weatherConsumer.todayWeather!.currentWeather.temperature < 20 ? 
            
                              "assets/cloudy.png": weatherConsumer.todayWeather!.currentWeather.temperature >20 &&

                               weatherConsumer.todayWeather!.currentWeather.temperature<30 ? "assets/sun_cloudy.png" :"assets/sunny.png"),

                               const SizedBox(
                                height: 10.0,
                               ),
                               Text(                weatherConsumer.todayWeather!.currentWeather.temperature.toString(),
              
              
           style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                       ),
                          Text(weatherConsumer.todayWeather!.currentWeather.weathercode.toString(),
          
                          style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                height: 250,
                width: size.width,
                child: ListView.builder(
                  itemCount: weatherConsumer.todayWeather!.hourly.time.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HourlyWidget(
                    time: weatherConsumer.todayWeather!.hourly.time[index],
                    temperature: weatherConsumer.todayWeather!.hourly.temperature2M[index].toString(),
                    relativehumidity2M:weatherConsumer.todayWeather!.hourly.relativehumidity2M[index].toString(),
                     windspeed10M:weatherConsumer.todayWeather!.hourly.windspeed10M[index].toString(),

                 
                    );
                          
                        }   ))

    ],),
)  ,
     
          // SafeArea(
             
          //     child: Padding(
              
          //       padding: const EdgeInsets.all(130),
            
          //       child:   Column(
              
          //         children: [
              
          //               Text(
          //                 weatherConsumer.todayWeather!.currentWeather.temperature.toString(),
              
              
          //                 style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
          //               ),
              
          //                    Image.asset(weatherConsumer.todayWeather!.currentWeather.temperature > 10 &&
              
          //                     weatherConsumer.todayWeather!.currentWeather.temperature < 20 ? 
            
          //                     "assets/cloudy.png": weatherConsumer.todayWeather!.currentWeather.temperature >20 &&

          //                      weatherConsumer.todayWeather!.currentWeather.temperature<30 ? "assets/sun_cloudy.png" :"assets/sunny.png"),
          
          //     Text(weatherConsumer.todayWeather!.currentWeather.weathercode.toString(),
          
          //                 style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
          //                 ),
     
              // SizedBox(
              //   height: 160,
              //   width: size.width,
              //   child: ListView.builder(
              //     itemCount: 24,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return HourlyWidget(weatherConsumer.hourly[index]);
                          
// // Text("hh");
// // color:Colors.blue;
                  // }),
              
                //  ListView.builder(
                             
                //                      padding: const EdgeInsets.all(24),
                             
                //                   itemCount: weatherConsumer .hourly.length,
                             
                //                      itemBuilder: (context, index) {
                             
                //                        Provider.of<WeatherProvider>(context, listen: false).fetchHourly();
                             
                //      Icon(Icons.add_a_photo);
                             
                //                 },scrollDirection: Axis.vertical,),
                   
              
                   
              
                  // ],
              
              
                // ),
              
                  
              // ),
            // ),
      //  ),
      //  ) ;
      //  );
  
     );
     
     }
  );}
  
                 

            
}


 
        
    
      
  

