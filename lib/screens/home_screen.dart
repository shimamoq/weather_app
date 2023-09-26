
import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';
import 'package:weather_app/helpers/helper_functions.dart';
 import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/widget/days_widget.dart';
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
//  String convertedTime = convertTo12HourForma(14:30)
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
      title: const Text("Weather App",style: TextStyle(color: Color.fromARGB(255, 243, 206, 158)),),
      centerTitle: true,
      leading: IconButton(onPressed: () {
        
      },icon: const Icon(Icons.menu),
      color: Colors.white,
      ),
   ),
            backgroundColor: const Color.fromARGB(255, 166, 185, 199),
body:  Center(
  child: weatherConsumer.isLoading
              ? const CircularProgressIndicator(color: Color.fromARGB(255, 243, 206, 158),strokeWidth: 2,)
              : SingleChildScrollView(
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  
    children: [
      Row(
        children: [IconButton(onPressed: (){}, icon: Icon(Icons.location_history,color: const Color.fromARGB(255, 243, 206, 158),weight: 77,)),
          Text("BENGHAZI",style: TextStyle(color: Colors.white,fontSize: 18),),
        ],
      ),
                                Divider(),


Text(
  convertTo12HourFormat(weatherConsumer.todayWeather!.currentWeather.time.toString().substring(11,weatherConsumer.todayWeather!.currentWeather.time.toString().length),
          
                          
              
),style:const TextStyle(color: Colors.white,fontSize: 30),),
                                         Image.asset(
                                  
                                          weatherConsumer.todayWeather!.currentWeather.temperature > 10 &&
              
                              weatherConsumer.todayWeather!.currentWeather.temperature < 20 ? 
            
                              "assets/cloudy.png": weatherConsumer.todayWeather!.currentWeather.temperature >20 &&

                               weatherConsumer.todayWeather!.currentWeather.temperature<30 ? "assets/sun_cloudy.png" :"assets/sunny.png"),

                               const SizedBox(
                                height: 10.0,
                               ),
                                   Text(weatherConsumer.todayWeather!.currentWeather.temperature.toString(),
          
                          style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                          ),
                          Text(                weatherConsumer.todayWeather!.currentWeather.weathercode.toString(),
              
              
           style:const TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 35),
              
                       ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Divider(),
                          SizedBox(
                height: 220,
                width: size.width,
                child: ListView.builder(
                  itemCount: weatherConsumer.todayWeather!.hourly.time.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return HourlyWidget(
                      hourlyUnites: weatherConsumer.todayWeather!.hourlyUnits,
                    time: weatherConsumer.todayWeather!.hourly.time[index],
                    temperature: weatherConsumer.todayWeather!.hourly.temperature2M[index].toString(),
                    relativehumidity2M:weatherConsumer.todayWeather!.hourly.relativehumidity2M[index].toString(),
                     windspeed10M:weatherConsumer.todayWeather!.hourly.windspeed10M[index].toString(),

                 
                    );
                          
                        }   )),
                                                  SizedBox(
                height: 700,
                width: size.width,
                child: ListView.builder(
                  itemCount: weatherConsumer.todayWeather!.hourly.time.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return DaysWidget(
                    time: weatherConsumer.todayWeather!.hourly.time[index],
                    temperature: weatherConsumer.todayWeather!.hourly.temperature2M[index].toString(),
                    // relativehumidity2M:weatherConsumer.todayWeather!.hourly.relativehumidity2M[index].toString(),
                    //  windspeed10M:weatherConsumer.todayWeather!.hourly.windspeed10M[index].toString(),

                 
                    );
                          
                        }   ))

                               
    ],
)  ,
     
  
        ) ) );
     
     }
  );}
  
                 

            
}


 
        
    
      
  

