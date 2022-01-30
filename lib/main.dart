import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omeoo_martino/pages/sign_in_page.dart';
import 'package:omeoo_martino/pages/splash_page.dart';
import 'package:omeoo_martino/pages/home/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/': (context) => SignInPage(),
        '/splash': (context) => SplashPage(),
        '/dashboard': (context) => MainPage(),
      }
    );
  }
}

