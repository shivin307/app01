import 'package:app01/todoModel.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  final ToDo todo;

  final todoChanged;
  final onDeleted;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.todoChanged,
      required this.onDeleted});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      tileColor: Colors.white,
      onTap: () {
        widget.todoChanged(widget.todo);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      leading: Icon(
        widget.todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        color: Colors.blue,
      ),
      title: Text(
        widget.todo.todoText!,
        style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: widget.todo.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Container(
        color: Colors.red,
        height: 35,
        width: 30,
        child: IconButton(
            onPressed: () {
              widget.onDeleted(widget.todo.id);
            },
            icon: Icon(Icons.delete)),
      ),
    ));
  }
}
