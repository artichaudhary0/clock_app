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

  int _selectedImage = 0;
  List<String> _images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3TEusIdQEwCOqusSjrLwCrrHp0rMV5HFi8Nx6Un46AP5ScFc_y-nku9lFJw&s",
    "data:image/jpeg;base64,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"];

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
                  Container(
                    height: 100,
                    width: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            child: GestureDetector(
                              onTap: () {
                                _selectedImage = index;
                              },
                              child: Image.network(_images[index]),
                            ),
                          );
                        }),
                  )
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
                _images[_selectedImage],
              ),
              fit: BoxFit.cover),
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
