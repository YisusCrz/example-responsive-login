import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:example_responsive_login/src/models/weather_model.dart';
import 'package:example_responsive_login/src/providers/weather_provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoggedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              JelloIn(
                child: Text('Thank you for visiting my example App Web! This is the weather of our city: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30
                  ),
                ),
              ),
              SizedBox( height: 50 ),
              _future(),
              SizedBox( height: 50 ),
              Container(
                height: 70,
                width: 200,
                child: RaisedButton.icon(
                  label: Text('Logout',
                    style: TextStyle( color: Colors.white, fontSize: 15 ),
                  ),
                  icon: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.white),
                  color: Color(0xff590995),
                  shape: StadiumBorder(),
                  onPressed: () => Navigator.pop(context),
                ),
              )
            ],
          ),
        )
     ),
   );
  }
}

Widget _future(){
  return FutureBuilder(
    future: weatherProvider.getWeather(),
    builder: (BuildContext context, AsyncSnapshot<Weather> snapshot) {
      if( !snapshot.hasData ){
        return CircularProgressIndicator();
      } else {
        return _temp( snapshot.data );
      }
    },
  );
}

Widget _temp( Weather weather ){
  return FadeIn(
    delay: Duration( milliseconds: 500 ),
      child: Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: 300,
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff150485),
                Color(0xff590995),
              ]
            )
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                right: -50.0,
                child: FadeIn(
                  child: SlideInLeft(
                    delay: Duration( milliseconds: 2000 ),
                    child: FaIcon(
                      FontAwesomeIcons.umbrella, 
                      color: Colors.white, 
                      size: 150,
                    ),
                  ),
                )
              ),
              Positioned(
                top: 30.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInLeft(
                      delay: Duration( milliseconds: 1000 ),
                      child: Text(weather.data[0].cityName + ', ' + weather.data[0].countryCode, 
                        style: TextStyle( color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox( height: 30.0 ),
                    FadeInLeft(
                      delay: Duration( milliseconds: 1200 ),
                      child: Text('Temp: ${weather.data[0].temp}°C', 
                        style: TextStyle( color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox( height: 30.0 ),
                    FadeInLeft(
                      delay: Duration( milliseconds: 1400 ),
                      child: Text('Feeling temp: ${weather.data[0].appTemp}°C', 
                        style: TextStyle( color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox( height: 30.0 ),
                    FadeInLeft(
                      delay: Duration( milliseconds: 1600 ),
                      child: Row(
                        children: [
                          Text('Weather: ${weather.data[0].weather.description}', 
                            style: TextStyle( color: Colors.white, fontSize: 25),
                          ),
                          SizedBox( width: 10 ),
                          Bounce(
                            from: 10.0,
                            delay: Duration( milliseconds: 2300 ),
                            child: FaIcon(
                              FontAwesomeIcons.cloud, 
                              color: Colors.white, 
                              size: 25
                            )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}