import 'package:flutter/material.dart';
import 'screens/WelcomeScreen.dart';
import 'screens/quizscreens.dart';

void main() {
  runApp(
    MaterialApp(
    initialRoute: '/home',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/home':
            return MaterialPageRoute(builder: ((context) => const WelcomePage()));
          case '/quiz':
            return MaterialPageRoute(builder: ((context) => const QuizScreen()));

        }
      },
  ));
}

