import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to FlouTask'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Image.asset(
                'assets/logo.png', // Ruta de la imagen del logo
                width: 100.0,
                height: 100.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Busca en tus proyectos :)',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: () {
                // Acción cuando se presiona el botón "+"
              },
              icon: Icon(Icons.add),
              label: Text('Agregar'),
            ),
          ],
        ),
      ),
    );
  }
}