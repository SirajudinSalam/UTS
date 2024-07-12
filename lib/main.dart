import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:utspemrogaman/screens/welcome_screen.dart';
=======
import 'package:coffee_app/screens/welcome_screen.dart';
>>>>>>> 809a7a1 (consume api)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: WelcomeScreen(),
    );
  }
}
