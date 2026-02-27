import 'package:flutter/material.dart';

// Importing your files with their exact new names
import 'welcome_app.dart';
import 'interactive_button.dart';
import 'user_input_form.dart';
import 'profile_screen.dart';
import 'todo_list_ui.dart';

void main() {
  runApp(FlutterTasksApp());
}

class FlutterTasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Tasks',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainMenuScreen(), 
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Tasks Menu")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Task1Welcome())),
            child: Text("Task 1: Welcome App"),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Task2ButtonClick())),
            child: Text("Task 2: Button Click"),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Task3UserInput())),
            child: Text("Task 3: Text Input"),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Task4Profile())),
            child: Text("Task 4: Profile Screen"),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Task5TodoList())),
            child: Text("Task 5: To-Do List"),
          ),
        ],
      ),
    );
  }
}