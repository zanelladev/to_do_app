import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';
import 'package:to_do_list/app/model/to_do_items.dart';

class ToDoList extends StatelessWidget {
  final ToDoItem todo;
  final onDeleted;
  final onChanged;

  const ToDoList({
    super.key,
    required this.todo,
    required this.onDeleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        onTap: () {
          onChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: whiteSmoke,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: bBlue,
        ),
        title: Text(
          todo.text!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: bRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: const Icon(Icons.delete),
            iconSize: 18,
            color: whiteSmoke,
            onPressed: () {
              onDeleted(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
