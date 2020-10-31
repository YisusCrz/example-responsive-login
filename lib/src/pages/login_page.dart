import 'package:flutter/material.dart';

import 'package:example_responsive_login/src/widgets/back_widgets.dart';


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
        _DesktopLoginLeftSide(size: size),
        _DesktopLoginRightSide(size: size)
      ],
    );
  }
}

class _DesktopLoginRightSide extends StatelessWidget {
  const _DesktopLoginRightSide({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: Stack(
        children: [
          Positioned(
            top: 20.0,
            right: 0.0,
            child: Transform.rotate(
              angle: -180,
              child: RectangleBordedWidget(),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Signin',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 5.0,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 400,
                    child: TextFormField(
                       decoration: InputDecoration(
                         hintText: 'Enter Username ...'
                       ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 400,
                    child: TextFormField(
                       decoration: InputDecoration(
                         hintText: 'Enter Password ...'
                       ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 50,
                    width: 400,
                    child: MaterialButton(
                      elevation: 10,
                      color: Colors.blueAccent,
                      child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      shape: StadiumBorder(),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

class _DesktopLoginLeftSide extends StatelessWidget {
  const _DesktopLoginLeftSide({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: size.width * 0.5,
      child: Stack(
        children: [
          Positioned(
            bottom: size.height * 0.3,
            right: 0.0,
            child: CircleWidget(),
          ),
          Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
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
                    child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
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
                      highlightElevation: 0.0,
                      highlightedBorderColor: Colors.white,
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        width: 3.0,
                        color: Colors.white
                      ),
                      child: Text('Know More',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      shape: StadiumBorder(),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
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