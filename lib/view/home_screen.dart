import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
/*
Transform.scale(), Transform.translate() & Transform.rotate() widgets
Types of Progress Bars
: Linear progress bar
: Circular progress bar
DateTime class
 */

enum gender { male, female }

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime = DateTime.now();
  double scale = 1;
  double angle = 1;
  bool isTrue = true;

  void startClock() {
    Future.delayed(const Duration(seconds: 3), () {
      dateTime = DateTime.now();
      setState(() {});
      startClock(); // recursion
      print(dateTime);
    });
  }

  @override
  void initState() {
    startClock();
    print(dateTime);
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              LinearProgressIndicator(),
              Switch(
                  value: isTrue,
                  onChanged: (value) {
                    setState(() {
                      isTrue = value;
                    });
                  }),
              Visibility(
                visible: isTrue,
                child: Text(
                  dateTime.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              Transform.scale(
                scale: scale,
                origin: const Offset(10, 0),
                child: const Divider(
                  color: Colors.red,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                ),
              ),
              Transform.rotate(
                angle: -pi / angle, // 180
                origin: const Offset(10, 0),
                child: const Divider(
                  color: Colors.red,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.lightBlue.shade200,
                child: Transform.translate(
                  offset: Offset(-100, -100),
                  filterQuality: FilterQuality.low,
                  child: Divider(
                    color: Colors.red,
                    thickness: 100,
                    indent: 40,
                    endIndent: 40,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scale++;
                          });
                        },
                        child: const Icon(
                          Icons.arrow_drop_up_sharp,
                          size: 24,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                angle++;
                              });
                            },
                            child: const Icon(
                              Icons.arrow_left_outlined,
                              size: 24,
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.arrow_right_outlined,
                              size: 24,
                            ))
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            scale--;
                          });
                        },
                        child: const Icon(
                          Icons.arrow_drop_down_sharp,
                          size: 24,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
