import 'package:flutter/material.dart';

class previewPage extends StatelessWidget {
  previewPage(this._text);
  String _text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
      ),
      body: Container(
        child: Text(_text),
      ),
    );
  }
}
