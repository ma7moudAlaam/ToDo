import 'package:flutter/material.dart';
import 'package:todo/core/theme/application_theme.dart';
import 'package:todo/layout/home_layout/home_layout_view.dart';
import 'package:todo/pages/splash_view/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ApplicationToDo());
}
class ApplicationToDo extends StatelessWidget{
  const ApplicationToDo({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashView.routeName,
    routes: {
      SplashView.routeName:(context) => const SplashView(),
      HomeLayoutView.routeName:(context)=> HomeLayoutView()
    },


    );
  }

}