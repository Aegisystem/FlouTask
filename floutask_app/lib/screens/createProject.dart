import 'package:flutter/material.dart';

class CreateProject extends StatefulWidget {
  const CreateProject({Key? key}) : super(key: key);

  @override
  _CreateProjectState createState() => _CreateProjectState();
}

class _CreateProjectState extends State<CreateProject> {
  final List<String> objetivos = [];
  final TextEditingController objetivoController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    objetivoController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void agregarObjetivo() {
    final nuevoObjetivo = objetivoController.text;
    if (nuevoObjetivo.isNotEmpty) {
      setState(() {
        objetivos.add(nuevoObjetivo);
        objetivoController.clear();
      });
    }
  }

  void eliminarObjetivo(int index) {
    setState(() {
      objetivos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2C6A9),
      appBar: AppBar(
        title: const Text('AÑADIR PROYECTO'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: Container(
            color: Colors.brown,
            height: 10.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/nameicon.png',
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'NOMBRE DEL PROYECTO',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Listar objetivos del proyecto",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: objetivoController,
                          style: TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                            labelText: 'OBJETIVOS',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                          maxLines: null,
                        ),
                      ),
                      IconButton(
                        onPressed: agregarObjetivo,
                        icon: Icon(Icons.add),
                        color: Colors.brown,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < objetivos.length; i++)
                        ObjetivoWidget(
                          objetivo: objetivos[i],
                          onDelete: () => eliminarObjetivo(i),
                        ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'OPCIONES DE COMPARTIR',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 88, vertical: 150),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  primary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  ' CREA TU NUEVO PROYECTO ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ObjetivoWidget extends StatelessWidget {
  final String objetivo;
  final VoidCallback onDelete;

  const ObjetivoWidget({
    Key? key,
    required this.objetivo,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(objetivo, style: TextStyle(color: Colors.brown)),
          ),
        ),
        IconButton(
          icon: Icon(Icons.remove_circle),
          onPressed: onDelete,
          color: Colors.brown,
        ),
      ],
    );
  }
}
