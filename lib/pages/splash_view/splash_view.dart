import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/layout/home_layout/home_layout_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static String routeName="splash";
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {Navigator.pushReplacementNamed(context, HomeLayoutView.routeName) ;});
    return Image.asset("assets/images/splash_light.png",fit: BoxFit.cover,);
  }
}
