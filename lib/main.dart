import 'package:flutter/material.dart';

//Screens
import './screens/home_screen.dart';
import './screens/auth_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking Mobile App Design',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: AuthScreen(),
      routes: {
        HomeScreen.routName: (ctx) => HomeScreen(),
      },
    );
  }
}
