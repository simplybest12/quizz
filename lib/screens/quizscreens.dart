import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int timer = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA8E2FF),
      body: Container(
        padding: EdgeInsets.all(12),
        width: double.infinity,
        height: double.infinity,
        child: Column(

         children: [
          Row(
             children: [
              Container(
                
                margin: EdgeInsets.only(left: 8, top: 40),
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(

                    CupertinoIcons.xmark_circle,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
               Spacer(flex: 1,),
               Stack(
                 children: [
                   Text( "15"
                     ,style: GoogleFonts.pacifico(
                   textStyle: TextStyle(
                     fontSize: 25,

                     color: Colors.white



                   ),
                   ),
                   )
                 ],
               ),
               Spacer(flex: 1,),
               Container(
                 decoration: BoxDecoration(
                   border:Border.all(color: Colors.white,width: 2)
                 ),
                 child: Text("Like",
                 style: GoogleFonts.lato(
                   textStyle: TextStyle(
                     fontSize: 25
                   )
                 ),
                 ),
               )


              ],
            )
          ],
        ),
      ),
    );
  }
}