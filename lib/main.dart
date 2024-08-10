import 'package:flutter/material.dart';
import 'package:previewapp/previewPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // テーマカラー指定：deepPurple
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // AppTitle指定：Preview App
      home: const MyHomePage(title: 'Preview App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // titleとテーマカラーはMyAppウィジェットで指定したものを使っている
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        // 画面オーバーフロー防止
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 入力フォーム
              TextField(
                // 複数行入力
                keyboardType: TextInputType.multiline,
                // 最大行指定なし
                maxLines: null,
                decoration: const InputDecoration(
                  // 未入力の際に「入力して下さい」の表示
                  hintText: "入力して下さい",
                ),
                onChanged: (String value) {
                  // setStateで_textに値渡し
                  setState(() {
                    _text = value;
                  });
                },
              ),
              ElevatedButton(
                // ボタンを押したときに_textを値渡し、画面遷移
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => previewPage(_text)));
                },
                child: const Text('入力'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
