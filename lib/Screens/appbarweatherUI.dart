
import 'package:Haritkranti/Screens/getWeatherView.dart';
import 'package:Haritkranti/Themes/style.dart';
import 'package:Haritkranti/repository.dart';
import 'package:flutter/material.dart';

class StatusBarWidgetWeather extends StatelessWidget {
  Repository _repository = Repository();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.green[900],
      child: FutureBuilder(
        future: _repository.getWeather(),
        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Text(
                  'Loading...!',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            // case ConnectionState.active:
            // case ConnectionState.done:
            default:
              if (snapshot.hasError)
                return Center(
                  child: Text(
                    'Unable to get weather data !',
                   style: TextStyle(color: Colors.white, fontSize: 10.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              else
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                          Text(
                            snapshot.data.name,
                           style: TextStyle(color: Colors.white, fontSize: 14.0),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: Image.network(
                                    'http://openweathermap.org/img/w/${snapshot.data.weather[0].icon}.png'),
                              ),
                              SizedBox(
                                width: 6.5,
                              ),
                              Text(
                               '${snapshot.data.main.temp.toString()}°C',
                                 style: TextStyle(color: Colors.white, fontSize: 20.0),
                              )
                            ],
                          ),
                          Text(snapshot.data.weather[0].main,
                                style: TextStyle(color: Colors.white, fontSize: 10.0),
                                 // Text(
                              
                            //   '${snapshot.data.main.temp.toString()}°C',
                            //   style:
                            //     TextStyle(color: Colors.black, fontSize: 36.0)),
                          )
                        ],
                          
                      ),
                      InkWell(
                         onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => StatusBarWidget()));
            },
                        child: Text('Know More', style: statusText,overflow: TextOverflow.ellipsis,)),
                    ],
                  ),
                );
          }
        },
      ),
    );
  }
}
