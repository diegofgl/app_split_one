import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _buttonDescription = '';

  void _showDescription(String description) {
    setState(() {
      _buttonDescription = description;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mentoria Lifeados',
          style: TextStyle(
            color: Colors.white, // Change the color of the text
            fontWeight: FontWeight.bold, // Make the text bold
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showDescription(
                        'Flutter é um framework da Google que permite desenvolver aplicativos para múltiplas plataformas usando uma única base de código, oferecendo desempenho nativo e uma rica biblioteca de widgets visuais.');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    // Change the color of the text on the button
                  ),
                  child: const Text('Flutter'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showDescription(
                        'Widgets são os componentes básicos em Flutter, utilizados para criar e gerenciar a interface do usuário em forma de árvore, podendo ser estáticos (Stateless) ou dinâmicos (Stateful).');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors
                        .purple, // Change the color of the text on the button
                  ),
                  child: const Text('Widgets'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              _buttonDescription,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
