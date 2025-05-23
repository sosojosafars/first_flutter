import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro App Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String msg = "Meu Primeiro App Flutter!";
  String img1 = "assets/images/imagem1.jpg";
  bool clicado = false;

  void _mudarMensagem() {
    setState(() {
      clicado = !clicado;
      if (clicado) {
        msg = "Você clicou no botão com sucesso";
        img1 = "assets/images/imagem2.jpg";
      } else {
        msg = "Meu Primeiro App Flutter!";
        img1 = "assets/images/imagem1.jpg";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sofia Josafá Rocha Santos'),
        backgroundColor: Colors.pinkAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(img1, height: 200),
            SizedBox(height: 20),
            Text(msg),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _mudarMensagem,
              child: Text("Mudar Mensagem"),
            ),
          ],
        ),
      ),
    );
  }
}
