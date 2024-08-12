import 'package:flutter/material.dart';
import 'package:top_ten_afghan_singer/Screens/home_screen.dart';
import 'package:top_ten_afghan_singer/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('fa', ''),
      localeResolutionCallback: (locale , supportedLocale){
        return locale;
      },
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     routes: {
        '/' :(context)=> SplashScreen(),
        '/home' :(context)=> HomeScreen(),

     },
    );
  }
}
