import 'package:flutter/material.dart';

/*
Drawer widget
* */
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Screen"),
      ),
      drawer: Drawer(
          child: Column(
                  children: [
          Container(
            height: 200,
            color: Colors.deepPurple.shade100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("IconButton"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue.shade400,
                  iconSize: 30,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    elevation: MaterialStateProperty.all(20),
                  ),
                ),
              ],
            ),
          ),
                  ],
                )),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("IconButton"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue.shade400,
                  iconSize: 30,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown),
                    elevation: MaterialStateProperty.all(20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("IconButton Filled"),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue.shade400,
                  disabledColor: Colors.grey,
                  splashColor: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("IconButton filledTonel"),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue.shade400,
                  disabledColor: Colors.grey,
                  splashColor: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("IconButton Outlined"),
                IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  color: Colors.blue.shade400,
                  disabledColor: Colors.grey,
                  splashColor: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Text Button ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Text Button"),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Press me!!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Text Icon Button"),
                TextButton.icon(
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Elevated Button ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Elevated Button"),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Press me!!",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Elevated Icon Button"),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.ac_unit),
                  label: const Text(
                    "Press me!!",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Outlined Button",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Outlined Icon Button"),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Press me!!",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
