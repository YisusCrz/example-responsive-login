import 'package:flutter/material.dart';

import 'package:example_responsive_login/src/widgets/circle_widget.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if( constraints.maxWidth > 1200 ){
          return Scaffold(
            body: DesktopLogin()
          );
        } else if ( constraints.minWidth > 800 && constraints.maxWidth < 1200 ){
          return Scaffold(
            body: DesktopLogin()
          );
        } else {
          return MobileLogin();
        }
      },
    );
  }
}

class DesktopLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return Row(
      children: [
        Container(
          color: Colors.blueAccent,
          width: size.width * 0.5,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to MDM',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox( height: 20, ),
                    Container(
                      height: 5,
                      width: 120,
                      color: Colors.white,
                    ),
                    SizedBox( height: 20, ),
                    Container(
                      width: 400,
                      child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                    ),
                    SizedBox( height: 40, ),
                    Container(
                      height: 70,
                      width: 200,
                      child: OutlineButton(
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          width: 2.0,
                          color: Colors.white
                        ),
                        child: Text('Know More',
                          // style: TextStyle(
                          //   color: Colors.white,
                          //   // fontSize: 20,
                          // ),
                        ),
                        shape: StadiumBorder(),
                        onPressed: (){},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}



class MobileLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}