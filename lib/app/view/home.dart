import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';
import 'package:to_do_list/app/model/to_do_items.dart';
import 'package:to_do_list/app/view/widgets/add_todo.dart';
import 'package:to_do_list/app/view/widgets/app_bar.dart';
import 'package:to_do_list/app/view/widgets/to_do_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDoItem.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      appBar: const HomeAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListView(
              children: [
                for (ToDoItem todo in todosList)
                  ToDoList(
                    todo: todo,
                    onDeleted: deleteToDo,
                    onChanged: toggleToDoStatus,
                  ),
              ],
            ),
          ),
          AddButton(
            addToDo: addToDo,
          )
        ],
      ),
    );
  }

  void toggleToDoStatus(ToDoItem todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void deleteToDo(int id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void addToDo(String todo) {
    setState(() {
      if (todosList.isNotEmpty) {
        todosList.add(ToDoItem(id: todosList.last.id! + 1, text: todo));
      } else {
        todosList.add(ToDoItem(id: 0, text: todo));
      }
    });
  }
}
