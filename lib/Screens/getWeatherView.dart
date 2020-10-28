
import 'package:Haritkranti/repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StatusBarWidget extends StatelessWidget 
{
  Repository _repository = Repository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Weather Today'),
        centerTitle: true,
      ),
      body: Container(
        // height: 55,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Background-02.jpg"),
            // image: NetworkImage("https://images.pexels.com/photos/2186581/pexels-photo-2186581.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            fit: BoxFit.cover,
          ),
      ),

        child: FutureBuilder(
          future: _repository.getWeather(),
          // ignore: missing_return
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Text(
                    'Fetching Data From Server Please Wait...!',
                    // style: haritkranti,
                  ),
                );
              default:
                if (snapshot.hasError)
                  return Center(
                    child: Text(
                      'Unable to Reach Weather Server...! ${snapshot.error}',
                    ),
                  );
                else
                  return Center(
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                             SizedBox(
                          height: 25.0,
                    
                        ),
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                             SizedBox(
                          height: 8.0,
                    
                        ),
                            Text(snapshot.data.name,
                                style: TextStyle(color: Colors.black,fontSize: 30.0))
                          ],
                        ),
                          SizedBox(
                          height: 15.0,
                    
                        ),
                        Text(new DateFormat.yMMMd().format(snapshot.data.dt)),
                        
                        
                        SizedBox(
                          height: 100.0,
                    
                        ),
                        //  Text(snapshot.data.weather[0].main,
                        //     style:
                        //         TextStyle(color: Colors.black, fontSize: 36.0)),
                        // // Text(new DateFormat.yMMMd().format(snapshot.data.dt)),
                        // Image.network(
                        //     'http://openweathermap.org/img/w/${snapshot.data.weather[0].icon}.png'),
                      
                        Text(
                              
                              '${snapshot.data.main.temp.toString()}°C',
                              style:
                                TextStyle(color: Colors.black, fontSize: 86.0)),
                        Text( '${snapshot.data.weather[0].main} Today',
                            style:
                                TextStyle(color: Colors.black, fontSize: 36.0)),
                        // Text(new DateFormat.yMMMd().format(snapshot.data.dt)),
                        Image.network(
                            'http://openweathermap.org/img/w/${snapshot.data.weather[0].icon}.png'),
                                SizedBox(
                          height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 2.5,
                            ),
                            // Text(
                              
                            //   '${snapshot.data.main.temp.toString()}°C',
                            //   style:
                            //     TextStyle(color: Colors.black, fontSize: 36.0)),
                           
                          ],
                        ),
                            SizedBox(
                          height: 8.0),
                        Row( 
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text(
                                'Temperature Min : ${snapshot.data.main.tempMin.toString()} °C'),
                          ],
                        ),
                        
                        SizedBox(height: 10.0),
                        Text(
                            'Temperature Max : ${snapshot.data.main.tempMax.toString()} °C'),
                        SizedBox(height: 10.0),
                        
                        Text(
                            'Humidity : ${snapshot.data.main.humidity.toString()} %'),
                        SizedBox(height: 10.0),
                        Text(
                            'Wind Speed : ${snapshot.data.wind.speed.toString()}km/h'),
                            

                        // Text(snapshot.data.main.tempMax.toString()),
                        // Text(snapshot.data.main.humidity.toString()),
                        // Text(snapshot.data.wind.speed.toString()),
                      ],
                    ),
                  );
            }
          },
        ),
      ),
    );
  }
}
