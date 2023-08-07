// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double logoOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Start the logo animation after a 1-second delay.
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        logoOpacity = 1.0;
      });
    });
    // Simulate a 3-second delay before navigating to the main content.
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a Stack widget to overlay the image with your content.
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/icons/PlasticBackground.png',
            fit: BoxFit.cover,
          ),
          // Animated centered logo
          Center(
            child: AnimatedOpacity(
              opacity: logoOpacity,
              duration:
                  Duration(milliseconds: 500), // Adjust the duration as needed.
              child: Image.asset(
                'assets/icons/Logo.png',
                width: 390, // Customize the width of the logo as needed.
                height: 390, // Customize the height of the logo as needed.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
