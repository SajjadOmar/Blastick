import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  // Step 2: Create a Completer object for future-based dialogs.
  final Completer<void> _dialogCompleter = Completer<void>();

  // Step 3: Define the function to show the recycle dialog.
  Future<void> _showRecycleDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Recycle Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to recycle?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
                // Complete the Completer with null (dialog dismissed without recycling).
                _dialogCompleter.complete();
              },
            ),
            TextButton(
              child: Text('Recycle'),
              onPressed: () {
                Navigator.of(context).pop();
                // Complete the Completer with a value (dialog confirmed recycling).
                _dialogCompleter.complete();
              },
            ),
          ],
        );
      },
    );
  }

  // Step 4: Define the _buildRowWithIcon method to create the icon row.
  Widget _buildRowWithIcon(String iconPath, String label) {
    return Column(
      children: [
        Image.asset(
          iconPath,
          height: 100,
          width: 100,
        ),
        SizedBox(height: 8),
        _buildCircularNumberField(label),
      ],
    );
  }

  Widget _buildCircularNumberField(String label) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: label,
        ),
      ),
    );
  }

  Widget _buildNotesBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(
          hintText: 'أدخل ملاحظاتك هنا',
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icons/Background2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            // Center the content on the screen
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/icons/Logo.png',
                      height: 200, // Adjust the height as desired
                      width: 200, // Adjust the width as desired
                    ),
                  ),
                  Text(
                    ': يرجى اختيار كمية العلب مع حجم العلبة',
                    style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                  ),
                  SizedBox(
                    height: 8, // Add space between the text and the text field
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildRowWithIcon('assets/icons/Small.png', ''),
                      _buildRowWithIcon('assets/icons/Medium.png', ''),
                      _buildRowWithIcon('assets/icons/Large.png', ''),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  _buildNotesBox(), // Add the notes box
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/welcome");
                    },
                    child: Text('إعادة تدوير'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
