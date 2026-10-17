import 'package:flutter/material.dart';
void main() => runApp(const FlashApp());
class FlashApp extends StatelessWidget {
  const FlashApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flash TV',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(child: Text('FLASH TV - Cargando...', style: TextStyle(fontSize: 24))),
      ),
    );
  }
}
