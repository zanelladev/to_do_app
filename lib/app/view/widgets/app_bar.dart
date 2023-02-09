import 'package:flutter/material.dart';
import 'package:to_do_list/app/constants/colors.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: dark,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'My To Do List',
        style: TextStyle(
          color: ghostWhite,
        ),
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60.0);
}
