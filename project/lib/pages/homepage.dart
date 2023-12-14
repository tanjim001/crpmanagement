import 'package:flutter/material.dart';
import 'package:project/pages/card.dart';
import 'package:project/pages/constant.dart';
import 'package:project/pages/navbar.dart';
import 'package:project/pages/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 241, 242),
        drawer: const NavBar(),
        appBar: AppBar(
          elevation: 0.5,
          title: const Text(
            "DashBoard",
            style: txtstyle1,
          ),
          backgroundColor: const Color(0xFF34ca88),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: const Column(
          children: [
            Dcard(
              title: 'first project',
              description: 'doing bullshits ',
            ),
            TODO(todo: "lets do some task")
          ],
        ),
      ),
    );
  }
}
