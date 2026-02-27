import 'package:flutter/material.dart';

class Task2ButtonClick extends StatefulWidget {
  @override
  _Task2ButtonClickState createState() => _Task2ButtonClickState();
}

class _Task2ButtonClickState extends State<Task2ButtonClick> {
  String message = "Click the button!";

  void changeText() {
    setState(() {
      message = "You pressed the button!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Click Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: TextStyle(fontSize: 28)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeText,
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}