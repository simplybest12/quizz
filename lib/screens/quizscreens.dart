import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    time?.cancel();
  }

  int countofques = 0;
  int seconds = 15;
  bool heartcol = false;
  void changehrtclr() {
    setState(() {
      heartcol = !heartcol;
    });
  }

  Timer? time;
  starttimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.only(top: 45, left: 20, right: 20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.xmark_circle,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Spacer(
                  flex: 1,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      "$seconds",
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator(
                        value: seconds / 15,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          changehrtclr();
                        });
                      },
                      icon: Icon(
                        CupertinoIcons.heart_fill,
                        size: 16,
                        color: heartcol ? Colors.pink : Colors.white,
                      ),
                      label: Text(
                        "Like",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              height: 150,
              child: Image.asset(
                'assets/images/question.png',
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "question $countofques of 10",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 17, color: Colors.white60)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "In which city of german is largest port?",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                width: 280,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));

                  },
                  child: Text(
                    "Game",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontFamily: "quick_bold"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                ),
              );
                })
          ],
        ),
      ),
    );
  }
}
