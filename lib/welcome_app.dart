import 'package:flutter/material.dart';

// 1. There is no void main() { runApp(...) } here anymore!
// 2. The class name is updated to match what main.dart is calling.

class Task1Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: Center(
        child: Text(
          "Welcome to Flutter Development!",
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}