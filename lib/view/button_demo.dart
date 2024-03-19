import 'package:flutter/material.dart';

import '../common_widget/heading.dart';
import '../common_widget/text_with_button.dart';

/*
Asynchronous Programming
Future class
Duration class & Future.delayed() constructor
async & await keywords
Recursion Concept
*/
class ButtonDemoScreen extends StatefulWidget {
  const ButtonDemoScreen({super.key});

  @override
  State<ButtonDemoScreen> createState() => _ButtonDemoScreenState();
}

class _ButtonDemoScreenState extends State<ButtonDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Icon Button",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextWithButton(
              title: "IconButton",
              widget: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                color: Colors.blue.shade400,
                iconSize: 30,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.brown),
                  elevation: MaterialStateProperty.all(20),
                ),
              ),
            ),
            TextWithButton(
              title: "IconButton Filled",
              widget: IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                color: Colors.blue.shade400,
                disabledColor: Colors.grey,
                splashColor: Colors.red,
                iconSize: 30,
              ),
            ),
            TextWithButton(
              title: "IconButton filledTonel",
              widget: IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                color: Colors.blue.shade400,
                disabledColor: Colors.grey,
                splashColor: Colors.red,
                iconSize: 30,
              ),
            ),
            TextWithButton(
              title: "IconButton Outlined",
              widget: IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                color: Colors.blue.shade400,
                disabledColor: Colors.grey,
                splashColor: Colors.red,
                iconSize: 30,
              ),
            ),
            HeadingText(
              title: "Text Button ",
            ),
            TextWithButton(
              title: "Text Button",
              widget: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {},
                child: const Text(
                  "Press me!!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextWithButton(
              title: "Text Icon Button",
              widget: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                label: const Text(
                  "Press me!!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            HeadingText(
              title: "Elevated Button  ",
            ),
            TextWithButton(
              title: "Elevated Button",
              widget: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Press me!!",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            TextWithButton(
              title: "Elevated Icon Button",
              widget: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
                label: const Text(
                  "Press me!!",
                ),
              ),
            ),
            HeadingText(
              title: "Outlined Button ",
            ),
            TextWithButton(
              title: "Outlined Button",
              widget: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Press me!!",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Outlined Icon Button"),
                Theme(
                  data: ThemeData(
                    useMaterial3: false,
                    outlinedButtonTheme: const OutlinedButtonThemeData(
                      style: ButtonStyle(
                        iconColor: MaterialStatePropertyAll(Colors.black),
                      ),
                    ),
                  ),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.ac_unit),
                    label: const Text(
                      "Press me!!",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}



