import 'package:flutter/material.dart';

class TODO extends StatelessWidget {
  final String todo;
  const TODO({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black12)],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Column(
        children: [
          Text(
            "TODO: $todo",
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    ;
  }
}
