// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThankScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/ThanksBackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'شكرًا لمساهمتك معنا,لشراء منتجات صديقة للبيئة  ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 34, 26, 26),
                ),
              ),
              Text(
                'يمكنك الذهاب إلى المتجر   ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 34, 26, 26),
                ),
              ),
              SizedBox(height: 22),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/store');
                },
                child: Text(' رؤية المتجر '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
