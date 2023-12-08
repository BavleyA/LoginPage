import 'package:flutter/material.dart';
import 'package:flutter_app/screens/onboardingscreen.dart';
import 'package:flutter_app/screens/home.dart';
import 'package:flutter_app/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  //const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return OnBoard();
      }));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your splash screen image
            Image.asset(
              'assets/images/bigDoc.png',
              width: 300.0,
              height: 300.0,
            ),
            SizedBox(height: 80),
            Text(
              'Welcome To Our Health Care App',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}