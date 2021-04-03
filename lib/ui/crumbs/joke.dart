import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JokeItem extends StatelessWidget {

  final String joke;

  JokeItem(this.joke);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(width: 20, color: Colors.grey),
          ),
        ),
        child: RichText(
            text: TextSpan(
                text: "\" ",
                children: [
                  TextSpan(
                      text:
                      joke ?? "...loading",
                      style: GoogleFonts.playfairDisplay(
                          color: Colors.grey[800], fontSize: 35))
                ],
                style: TextStyle(color: Colors.grey[500], fontSize: 30))),
      ),
    );
  }
}
