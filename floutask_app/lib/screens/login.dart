import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:floutask_app/services/Authenticator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Scaffold(
      backgroundColor: Color(0xFFE2C6A9), // Establece el fondo de la pantalla
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8, // Limita el ancho al 80% de la pantalla
          child: MaterialButton(
            onPressed: () async {
              User? user = await Authenticator.iniciarSesion(context: context);
              print(user?.displayName);
            },
            color: Colors.white, // Establece el color de fondo del botón
            height: 50, // Ajusta la altura del botón
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.google),
                SizedBox(width: 10),
                Text(
                  'Iniciar Sesión con Google',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown, // Establece el color del texto
                  ),
                ),
              ],
            ),
            textColor: Colors.brown,
          ),
        ),
      ),
    );
  }
}
