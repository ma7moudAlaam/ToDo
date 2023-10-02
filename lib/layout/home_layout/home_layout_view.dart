import 'package:flutter/material.dart';
import 'package:todo/pages/splash_view/splash_view.dart';

class HomeLayoutView extends StatelessWidget {
  const HomeLayoutView({super.key});
static String routeName="home";
  @override
  Widget build(BuildContext context) {
    return SplashView();
  }
}
