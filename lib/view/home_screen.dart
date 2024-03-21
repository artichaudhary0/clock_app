import 'dart:async';
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
  bool _isAnalog = false;
  bool _isDigital = false;
  bool _isStrap = false;

  void startClock() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTime = DateTime.now();
      setState(() {});
      startClock();
    });

    // Future.delayed(const Duration(seconds: 1), () {
    //   dateTime = DateTime.now();
    //   setState(() {});
    //   startClock(); // recursion
    //   print(dateTime);
    // });
  }

  List<String> _images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3TEusIdQEwCOqusSjrLwCrrHp0rMV5HFi8Nx6Un46AP5ScFc_y-nku9lFJw&s",
    "data:image/jpeg;base64,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"
  ];

  @override
  void initState() {
    startClock();
    print(dateTime);
    print(dateTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Arti chaudhary"),
              accountEmail: const Text("arti@gmail.com"),
              currentAccountPicture: Image.network(
                  "https://img.freepik.com/free-photo/young-woman-with-round-glasses-yellow-sweater_273609-7091.jpg?t=st=1711025170~exp=1711028770~hmac=865fcf42b740321ef814158d46d8883bb766c9a8a9ac75d3cbd297f7f0df795f&w=1380"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  switchWidget(_isAnalog, (value) {
                    _isAnalog = !_isAnalog;
                  }, "Analog"),
                  switchWidget(_isStrap, (value) {
                    _isStrap = !_isStrap;
                  }, "Strap"),
                  switchWidget(_isDigital, (value) {
                    _isDigital = !_isDigital;
                  }, "Digital"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              _images[0],
            ),
            fit: BoxFit.cover
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: _isAnalog,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ...List.generate(
                        60,
                        (index) => Transform.rotate(
                          angle: index * pi * 2 / 60,
                          child: Divider(
                            endIndent: index % 5 == 0
                                ? size.width * 0.88
                                : size.width * 0.88,
                            thickness: 10,
                            color: index % 5 == 0 ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),

                      // hour hand
                      Transform.rotate(
                        angle: pi / 2,
                        child: Transform.rotate(
                          angle: dateTime.hour * (pi * 2) / 12,
                          child: Divider(
                            indent: 50,
                            endIndent: size.width * 0.5 - 16,
                            color: Colors.black,
                            thickness: 4,
                          ),
                        ),
                      ),
                      // mintute hand
                      Transform.rotate(
                        angle: pi / 2,
                        child: Transform.rotate(
                          angle: dateTime.minute * (pi * 2) / 60,
                          child: Divider(
                            indent: 30,
                            endIndent: size.width * 0.5 - 16,
                            color: Colors.yellow,
                            thickness: 2,
                          ),
                        ),
                      ),
                      // second hand
                      Transform.rotate(
                        angle: pi / 2,
                        child: Transform.rotate(
                          angle: dateTime.second * (pi * 2) / 60,
                          child: Divider(
                            indent: 20,
                            endIndent: size.width * 0.5 - 16,
                            color: Colors.red,
                            thickness: 2,
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _isStrap,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      //hour strap
                      Transform.scale(
                        scale: 5,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: dateTime.hour / 12,
                          color: Colors.black,
                        ),
                      ),
                      // minute
                      Transform.scale(
                        scale: 4,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: dateTime.minute / 60,
                          color: Colors.yellow,
                        ),
                      ),
                      Transform.scale(
                        scale: 2,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: dateTime.second / 60,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _isDigital,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "${dateTime.hour} : ${dateTime.minute} : ${dateTime.second}")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget switchWidget(bool _isActive, Function(bool) onChange, String heading) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(heading),
      Switch(
        value: _isActive,
        onChanged: onChange,
      )
    ],
  );
}
