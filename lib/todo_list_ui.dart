import 'package:flutter/material.dart';

class Task5TodoList extends StatefulWidget {
  @override
  _Task5TodoListState createState() => _Task5TodoListState();
}

class _Task5TodoListState extends State<Task5TodoList> {
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(labelText: "Enter a task"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Add Task"),
            ),
            SizedBox(height: 20),
            Text(
              "Your Tasks will appear here",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}