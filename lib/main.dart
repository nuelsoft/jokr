import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joke/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke APIs',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        primarySwatch: Colors.grey,
      ),
      home: Home(),
    );
  }
}
