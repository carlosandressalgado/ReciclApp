import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class VentanaDeCarga extends StatefulWidget {
  const VentanaDeCarga({super.key});

  @override
  State<VentanaDeCarga> createState() => _VentanaDeCargaState();
}

class _VentanaDeCargaState extends State<VentanaDeCarga> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.recycling, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            const Text(
              "ReciclApp",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}

