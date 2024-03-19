import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  String title;
  HeadingText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}