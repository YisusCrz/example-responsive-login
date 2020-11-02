import 'package:animate_do/animate_do.dart';
import 'package:example_responsive_login/src/pages/logged_page.dart';
import 'package:flutter/cupertino.dart';
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
          return Scaffold(
            body: MobileLogin()
          );
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
    return FadeInRight(
      delay: Duration( seconds: 7 ),
      child: Container(
        width: size.width * 0.5,
        child: Stack(
          children: [
            Positioned(
              top: 20.0,
              right: 0.0,
              child: Transform.rotate(
                angle: -180,
                child: Spin(
                  delay: Duration( seconds: 8 ),
                  child: RectangleBordedWidget()
                ),
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
                      width: 300,
                      child: TextFormField(
                        enableSuggestions: true,
                         decoration: InputDecoration(
                           hintText: 'Enter Username ...'
                         ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 300,
                      child: TextFormField(
                        obscureText: true,
                         decoration: InputDecoration(
                           hintText: 'Enter Password ...'
                         ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                      height: 50,
                      width: 300,
                      child: MaterialButton(
                        elevation: 10,
                        color: Colors.blueAccent,
                        child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        shape: StadiumBorder(),
                        onPressed: () => Navigator.push(context, CupertinoPageRoute( builder: (_) => LoggedPage() ) ))
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
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
    return FadeInLeft(
      child: Container(
        color: Colors.blueAccent,
        width: size.width * 0.5,
        child: Stack(
          children: [
            Positioned(
              bottom: size.height * 0.3,
              right: 0.0,
              child: FadeIn(
                delay: Duration( seconds: 5 ),
                child: SlideInLeft(
                  delay: Duration( seconds: 6 ),
                  child: CircleWidget()
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeIn(
                      delay: Duration( seconds: 1 ),
                      child: Text('Welcome to MDM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox( height: 20, ),
                    FadeInLeft(
                      delay: Duration( seconds: 2 ),
                      child: Container(
                        height: 5,
                        width: 120,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox( height: 20, ),
                    FadeInUp(
                      delay: Duration( seconds: 3 ),
                      child: Container(
                        width: 400,
                        child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                    SizedBox( height: 40, ),
                    BounceInUp(
                      delay: Duration( seconds: 4 ),
                      child: Container(
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
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class MobileLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MobileLoginCompleteStructure();
  }
}

class _MobileLoginCompleteStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _MobileLoginTop(),
          SizedBox( height: 100 ),
          FadeIn(
            delay: Duration( milliseconds: 2300 ),
            child: Text('Signin',
              style: TextStyle( 
                color: Colors.black, 
                fontSize: 40 ,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox( height: 10, ),
          FadeInLeft(
            delay: Duration( milliseconds: 2300 ),
            child: Container(
              height: 5,
              width: 50,
              color: Colors.blueAccent
            ),
          ),
          SizedBox( height: 30 ),
          FadeInUp(
            delay: Duration( milliseconds: 2800 ),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow()
                ]
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, size: 30),
                      hintText: 'Enter Username ...'
                    ),
                  ),
                  SizedBox( height: 20, ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, size: 30),
                      hintText: 'Enter Password ...'
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 40,
                    width: 200,
                    child: MaterialButton(
                      color: Colors.blueAccent,
                      child: Text('LOGIN',
                        style: TextStyle( color: Colors.white ),
                      ),
                      shape: StadiumBorder(),
                      elevation: 10,
                      onPressed: () => Navigator.push(context, CupertinoPageRoute( builder: (_) => LoggedPage() ) ))
                  ),
                ],
              ),
            ),
          ),
          SizedBox( height: 100 ),
        ],
      ),
    );
  }
}

class _MobileLoginTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        FadeInDown(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          top: 50.0,
          child: CircleWidget(),
        ),
        Positioned(
          bottom: 50.0,
          right: 0.0,
          child: CircleWidget(),
        ),
        Positioned(
          left: 0.0,
          right: 0.0,
          bottom: -70.0,
          child: ZoomIn(
            delay: Duration( milliseconds: 800 ),
            child: Bounce(
              delay: Duration( seconds: 1 ),
              child: CircleAvatar(
                radius: 90,
                child: Icon(Icons.person, size: 120,),
              ),
            ),
          ),
        ),
      ]
    );
  }
}