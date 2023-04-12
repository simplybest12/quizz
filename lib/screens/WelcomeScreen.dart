import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz/screens/quizscreens.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8E2FF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8, top: 8),
                alignment: Alignment.topLeft,
                child: Icon(
                  CupertinoIcons.xmark_circle,
                  color: Colors.white,
                  size: 28,
                ),
              ),

              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 90),
                  height: 250,
                  child: GifView.asset(
                    'assets/gif/hotairbaloon.gif',
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Welcome to Our,",
                  style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontSize: 15, color: Colors.white70)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Quizz App",
                  style: GoogleFonts.craftyGirls(
                      textStyle: TextStyle(fontSize: 45, color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                    "Do You Feel Confident??\nTry Our Quiz App and Answer our questions.\nPress Game to Continue.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                        fontFamily: "quick_bold")),
              ),
              Spacer(
                flex: 1,
              ),

              Container(
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
                        color: Color(0xffA8E2FF),
                        fontFamily: "quick_bold"),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                ),
              )
              // Container(
              //   width: 250,

              //   height: 50,
              //   decoration: BoxDecoration(
              //   color: Colors.white,

              //     borderRadius: BorderRadius.circular(25)
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
