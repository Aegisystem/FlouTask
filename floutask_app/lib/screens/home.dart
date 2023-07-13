import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2C6A9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),

            Flexible(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(20.0), // Ajusta el valor del padding según tus necesidades
                child: Image.asset(
                  'assets/images/nameicon.png',
                  scale: 15,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                style: TextStyle(color: Colors.brown),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Busca en tus proyectos :)',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // BOTON AGREGAR PROYECTO
            SizedBox(height: 16.0),
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.add_sharp),
                color: Colors.brown,
                onPressed: () {
                  Navigator.pushNamed(context, '/addproject');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}