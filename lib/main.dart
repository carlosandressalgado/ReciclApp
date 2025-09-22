import 'package:flutter/material.dart';
import 'ventana_de_carga.dart';

void main() {
  runApp(const ReciclApp());
}

class ReciclApp extends StatelessWidget {
  const ReciclApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ReciclApp',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const VentanaDeCarga(), 
    );
  }
}
