// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
//BY @Sajjad.dev
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/Store.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 188.0), // Adjust the top padding as needed
              child: Center(
                child: Text(
                  'اختار النبات المناسب لك ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 34, 26, 26),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
