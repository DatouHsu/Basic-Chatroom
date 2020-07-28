import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import './pages/login_page.dart';
import './pages/registeration_page.dart';
import './services/navigation_service.dart';
import './pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatapp',
      navigatorKey: NavigationService.instance.navigationKey,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(42, 117, 188, 1),
        accentColor: Color.fromRGBO(42, 117, 188, 1),
        backgroundColor: Color.fromRGBO(28, 27, 27, 1),
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext _context) => LoginPage(),
        'signup': (BuildContext _context) => RegistrationPage(),
        'home': (BuildContext _context) => Homepage(),
      },
      home: LoginPage(),
    );
  }
}
