import 'package:flutter/material.dart';

import 'package:example_responsive_login/src/pages/login_page.dart';
import 'package:example_responsive_login/src/pages/logged_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      initialRoute: '/',
      routes: {
        '/'     : (_) => LoginPage(),
        'logged': (_) => LoggedPage()
      },
    );
  }
}
