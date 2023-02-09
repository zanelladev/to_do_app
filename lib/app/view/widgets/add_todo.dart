import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';
import 'package:to_do_list/app/view/home.dart';

class AddButton extends StatelessWidget {
  final Function addToDo;
  AddButton({Key? key, required this.addToDo}) : super(key: key);
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 20,
              right: 20,
              left: 20,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: 'Add a new todo item', border: InputBorder.none),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 20,
            right: 20,
          ),
          child: ElevatedButton(
            onPressed: () {
              addToDo(_controller.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bBlue,
              minimumSize: const Size(60, 60),
              elevation: 10,
            ),
            child: const Text(
              '+',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
