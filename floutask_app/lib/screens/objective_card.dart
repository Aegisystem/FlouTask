import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ObjectiveCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const ObjectiveCard({
    required this.title,
    required this.subtitle,
  });

  @override
  _ObjectiveCardState createState() => _ObjectiveCardState();
}

class _ObjectiveCardState extends State<ObjectiveCard> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Objetivo'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
          color: Color(0xFFE2C6A9),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: GoogleFonts.oxygen().fontFamily,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.subtitle,
                    style: TextStyle(
                      color: Color(0xFF5D5D5D),
                      fontSize: 16,
                      fontFamily: GoogleFonts.oxygen().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
