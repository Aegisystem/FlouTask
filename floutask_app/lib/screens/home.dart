import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:floutask_app/screens/createProject.dart';
import "dart:async";

class Home extends StatefulWidget {
  final User user;

  Home({required this.user});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isButtonPressed = false;

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
                padding: EdgeInsets.all(20.0),
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
            SizedBox(height: 16.0),
            GestureDetector(
              onTapDown: (_) {
                setState(() {
                  _isButtonPressed = true;
                });
              },
              onTapUp: (_) {
                setState(() {
                  _isButtonPressed = false;
                });
              },
              onTapCancel: () {
                setState(() {
                  _isButtonPressed = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                transform: Matrix4.identity()..scale(_isButtonPressed ? 1.95 : 1.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.add_sharp),
                    color: Colors.brown,
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 200)); // Ajusta el valor del retraso según tus necesidades

                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => CreateProject(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Image.network(widget.user.photoURL!)
          ],
        ),
      ),
    );
  }
}