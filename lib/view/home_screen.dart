import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime = DateTime.now();

  void startClock() {
    Future.delayed(const Duration(seconds: 3), () => startClock());

    setState(() {});
    // startClock();
  }

  @override
  void initState() {
    startClock();
    print(dateTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.red,
              thickness: 10,
              indent: 40,
              endIndent: 40,
            ),
            Expanded(
                child: VerticalDivider(
              color: Colors.black,
              thickness: 10,
              indent: 60,
              endIndent: 100,
            )),
          ],
        ),
      ),
    );
  }
}
