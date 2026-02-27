import 'package:flutter/material.dart';

class Task3UserInput extends StatefulWidget {
  @override
  _Task3UserInputState createState() => _Task3UserInputState();
}

class _Task3UserInputState extends State<Task3UserInput> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Input Example")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Enter your name"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: "Enter your age"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = "Name: ${nameController.text}, Age: ${ageController.text} years old";
                });
              },
              child: Text("Submit"),
            ),
            SizedBox(height: 20),
            Text(
              displayText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}