import 'package:flutter/material.dart';

class EditObjective extends StatefulWidget {
  @override
  _EditObjectiveState createState() => _EditObjectiveState();
}

class _EditObjectiveState extends State<EditObjective> {
  TextEditingController _textEditingController = TextEditingController();
  TextAlign _textAlign = TextAlign.left;
  FontWeight _fontWeight = FontWeight.normal;
  FontStyle _fontStyle = FontStyle.normal;
  TextDecoration _textDecoration = TextDecoration.none;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _applyFontWeight() {
    setState(() {
      _fontWeight = _fontWeight == FontWeight.bold ? FontWeight.normal : FontWeight.bold;
    });
  }

  void _applyFontStyle() {
    setState(() {
      _fontStyle = _fontStyle == FontStyle.italic ? FontStyle.normal : FontStyle.italic;
    });
  }

  void _applyTextDecoration() {
    setState(() {
      _textDecoration = _textDecoration == TextDecoration.lineThrough ? TextDecoration.none : TextDecoration.lineThrough;
    });
  }

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
            child: TextField(
              controller: _textEditingController,
              style: TextStyle(
                fontWeight: _fontWeight,
                fontStyle: _fontStyle,
                decoration: _textDecoration,
              ),
              textAlign: _textAlign,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'Ingresa el texto del objetivo',
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.format_bold),
              onPressed: _applyFontWeight,
              color: _fontWeight == FontWeight.bold ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.format_italic),
              onPressed: _applyFontStyle,
              color: _fontStyle == FontStyle.italic ? Colors.blue : Colors.grey,
            ),
            IconButton(
              icon: Icon(Icons.format_strikethrough),
              onPressed: _applyTextDecoration,
              color: _textDecoration == TextDecoration.lineThrough ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
