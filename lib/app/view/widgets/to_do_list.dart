import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: whiteSmoke,
        leading: const Icon(
          Icons.check_box,
          color: bBlue,
        ),
        title: Text(
          'teste',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
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
            icon: Icon(Icons.delete),
            iconSize: 18,
            color: whiteSmoke,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
