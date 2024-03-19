
import 'package:flutter/material.dart';

class TextWithButton extends StatelessWidget {
  String title;
  Widget widget;
  TextWithButton({
    super.key,
    required this.title,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            widget,
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}