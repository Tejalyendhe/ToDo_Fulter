import 'package:flutter/material.dart';
import '../model/todo.dart';

class TodoItem extends StatefulWidget {
  final ToDo todo;

  const TodoItem({Key? key, required this.todo}) : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('clicked on todo item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          widget.todo.isDone == true
              ? Icons.check_box
              : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          widget.todo.todoText ?? '',
          style: TextStyle(
            decoration:
                widget.todo.isDone == true ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.delete),
            iconSize: 18,
            onPressed: () {
              print('Clicked on the delete button');
            },
          ),
        ),
      ),
    );
  }
}
