import 'package:flutter/material.dart';

class CrearCuentaPage extends StatelessWidget {
  const CrearCuentaPage({super.key});

  InputDecoration buildInputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.grey, width: 2),
      ),
      floatingLabelStyle: const TextStyle(
        color: Colors.grey, // 👈 ahora siempre gris
        fontWeight: FontWeight.bold,
      ),
      labelStyle: const TextStyle(color: Colors.grey), // inicial en gris
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Crear Cuenta",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: buildInputDecoration("Nombre de usuario", Icons.person),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: buildInputDecoration("Correo electrónico", Icons.email),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: buildInputDecoration("Contraseña", Icons.lock),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: buildInputDecoration("Confirmar contraseña", Icons.lock_outline),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // Aquí luego se agregará la lógica para crear cuenta
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
