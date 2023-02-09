import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';
import 'package:to_do_list/app/model/to_do_items.dart';
import 'package:to_do_list/app/view/widgets/app_bar.dart';
import 'package:to_do_list/app/view/widgets/to_do_list.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final todosList = ToDoItem.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ListView(
          children: [
            for (ToDoItem todo in todosList)
              ToDoList(
                todo: todo,
              ),
          ],
        ),
      ),
    );
  }
}
