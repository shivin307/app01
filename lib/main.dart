import 'package:flutter/material.dart';

import '../serachBox.dart';
import '../toDo.dart';
import 'todoModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _todoController = TextEditingController();
  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                searchBox(),
                SizedBox(
                  height: 25,
                ),
                for (ToDo todoo in todosList)
                  ToDoItem(
                    todo: todoo,
                    todoChanged: _onToDoChange,
                    onDeleted: _deleteToDoItem,
                  ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      child: TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                          hintText: 'hello',
                        ),
                      ),
                    )),
                Container(
                  child: ElevatedButton(onPressed: () {
                    _addToDoItem(_todoController.text);
                  }, child: Text("+")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((element) => element.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
          id: DateTime
              .now()
              .millisecondsSinceEpoch
              .toString(),
          todoText: toDo));
    });
    _todoController.clear();
  }
}
