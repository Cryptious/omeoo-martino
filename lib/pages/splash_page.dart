import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omeoo_martino/providers/product_provider.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    getInit();

    // Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/dashboard'));
    super.initState();
  }
    getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/dashboard'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/splash.png')),
        ),
      )),
    );
  }
}
