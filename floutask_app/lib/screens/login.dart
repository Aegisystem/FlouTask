import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:floutask_app/services/Authenticator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleAuthenticator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () async {
            User? user = await Authenticator.iniciarSesion(context: context);
            print(user?.displayName);
          },
          color: Colors.blue,
          child: Icon(FontAwesomeIcons.google),
          textColor: Colors.white,
        )
      ),
    );
  }
}
