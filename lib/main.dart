import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omeoo_martino/pages/sign_in_page.dart';
import 'package:omeoo_martino/pages/splash_page.dart';
import 'package:omeoo_martino/pages/home/main_page.dart';
import 'package:omeoo_martino/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=>AuthProvider(),
          ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes:{
          '/': (context) => SignInPage(),
          '/splash': (context) => SplashPage(),
          '/dashboard': (context) => MainPage(),
        }
      ),
    );
  }
}

