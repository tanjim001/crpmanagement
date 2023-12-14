import 'package:flutter/material.dart';

class Dcard extends StatelessWidget {
  final String title;
  final String description;
  const Dcard({super.key, required this.title, required this.description});

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
            "Title: $title",
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            maxLines: 4,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
