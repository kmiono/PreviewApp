import 'package:flutter/material.dart';

class previewPage extends StatelessWidget {
  // 値受け取り
  previewPage(this._text);
  String _text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
      ),
      body: Container(
        // 受け取った値の表示
        child: Text.rich(TextSpan(text: _text)),
      ),
    );
  }
}
