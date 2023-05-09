import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNo1 = 1;

  int diceNo2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 22, 61),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "DICe. ",
              style: TextStyle(
                  color: Color.fromARGB(255, 144, 63, 226),
                  fontSize: 50,
                  fontFamily: "clim"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //----------------- DICE 1---------------
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(0, 15)),
                    ],
                  ),
                  height: 100,
                  width: 100,
                  child: Image.asset("images/cube$diceNo1.jpg"),
                ),

                // -----------------DICE 2-----------------------
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("images/cube$diceNo2.jpg"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(0, 15)),
                    ],
                  ),
                ),
              ],
            ),

            // -------------------BUTTON---------------------
            GestureDetector(
              onTap: () async {
                Random random = Random();

                for (int i = 0; i < 6; i++) {
                  await Future.delayed(Duration(milliseconds: 200), () {});

                  diceNo1 = random.nextInt(6) + 1;
                  diceNo2 = random.nextInt(6) + 1;

                  setState(() {});
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 17, 19, 51),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 15))
                  ],
                ),
                child: Text(
                  "Lets Roll",
                  style: TextStyle(
                      color: Color.fromARGB(255, 144, 63, 226),
                      fontSize: 20,
                      fontFamily: "clim"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
