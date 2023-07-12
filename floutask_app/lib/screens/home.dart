import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2C6A9), // Establecer el color de fondo del Scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: SvgPicture.asset(
                'assets/logo.svg',
                semanticsLabel: 'My SVG Image',
                height: 100,
                width: 70,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                style: TextStyle(color: Colors.brown), // Establecer color de texto
                cursorColor: Colors.black, // Establecer color del cursor
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // Establecer color de fondo del campo de texto
                  hintText: 'Busca en tus proyectos :)',
                  hintStyle: TextStyle(color: Colors.grey), // Establecer color del texto de sugerencia
                  suffixIcon: Icon(Icons.search, color: Colors.black), // Establecer color del icono de búsqueda
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0), // Establecer bordes redondeados
                    borderSide: BorderSide.none, // Eliminar borde del campo de texto
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.brown,
                onPressed: () {
                  // Acción cuando se presiona el botón "+"
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}