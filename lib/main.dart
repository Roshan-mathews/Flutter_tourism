import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:splashscreen/splashscreen.dart';
import 'welcome/body.dart';
import 'constants.dart';
import 'welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme:ThemeData(
        primaryColor: KprimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:TrawellGo(),
    );
  }
}

class TrawellGo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new WelcomeScreen(),
        //title: new Text('Tra-Well-Go'),
        image:new Image.asset('ducati-superleggera-v4-front-3-quarter-view.jpg'),
        loadingText: Text('Loading..'),
        photoSize: 100.0,
        loaderColor:Colors.red
      );
    }
  }



