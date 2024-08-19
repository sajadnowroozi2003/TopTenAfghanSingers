import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: HomeScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  height: 300,
                )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ده خواننده برتر افغان',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'SplashFont',
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                  Text('v 0.1.1'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
