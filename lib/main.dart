import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[800],
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
              fontFamily: GoogleFonts.abhayaLibre().fontFamily, fontSize: 24),
          centerTitle: true,
          foregroundColor: Colors.white,
          color: Colors.indigo,
        ),
        cardTheme: CardTheme(
          color: Colors.indigo,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        primaryColor: Colors.indigo,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontFamily: GoogleFonts.pompiere().fontFamily,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          color: Colors.red,
        ),
        cardTheme: CardTheme(
          color: Colors.red,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
      ),
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballPressed = 1;
  void ballOnTap() {
    setState(() {
      ballPressed = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ask Me Anything',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: ballOnTap,
            child: Image.asset(
              'images/ball$ballPressed.png',
            ),
          )
        ],
      ),
    );
  }
}
