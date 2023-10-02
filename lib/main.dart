import 'package:flutter/material.dart';
import 'package:todo/core/theme/application_theme.dart';
import 'package:todo/layout/home_layout/home_layout_view.dart';
import 'package:todo/pages/splash_view/splash_view.dart';

void main() {
  runApp(const ApplicationToDo());
}
class ApplicationToDo extends StatelessWidget{
  const ApplicationToDo({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(initialRoute: SplashView.routeName,
    routes: {
      SplashView.routeName:(context) => const SplashView(),
      HomeLayoutView.routeName:(context)=>const HomeLayoutView()
    },
    theme: ApplicationTheme.lightTheme,

    );
  }

}