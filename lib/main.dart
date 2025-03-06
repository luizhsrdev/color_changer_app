import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  Color _getRandomColor() {
    return Color(
      (Random().nextDouble() * 0xFFFFFF).toInt() << 0,
    ).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Changer App')),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _changeBackgroundColor(Colors.red),
                child: Text('Vermelho'),
              ),
              ElevatedButton(
                onPressed: () => _changeBackgroundColor(Colors.blue),
                child: Text('Azul'),
              ),
              ElevatedButton(
                onPressed: () => _changeBackgroundColor(_getRandomColor()),
                child: Text('Aleatório'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
