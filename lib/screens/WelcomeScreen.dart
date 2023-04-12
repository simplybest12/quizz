import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4E8BD6),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [

              Container(
                alignment: Alignment.topLeft,
                child: Icon(CupertinoIcons.xmark_circle,
                  color: Colors.white,
                  size: 28,

                ),
                
              ),


              
              
              
              
              
            ],
          ),
        ),
      ),


    );
  }
}
