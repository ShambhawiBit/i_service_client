import 'package:flutter/material.dart';

import 'cat.dart';
import 'category_grid.dart';
class Category_screen extends StatelessWidget {
  const Category_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFF0E7),
        title: const Text(
          "Select Service categories",
          style: TextStyle(fontFamily: "Montserrat", color: Colors.black, fontSize: 14),
        ),
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: cat(),
      ),
    );
  }
}
