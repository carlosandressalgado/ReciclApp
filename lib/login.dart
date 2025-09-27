import 'package:flutter/material.dart';
import 'crear_cuenta.dart';
import 'inicio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
@override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  //  Método para no repetir estilos en los TextField
  InputDecoration buildInputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey), // ícono gris
      labelStyle: const TextStyle(color: Colors.grey), // texto en gris
      floatingLabelStyle: const TextStyle(
        color: Colors.grey, // gris cuando está enfocado
        fontWeight: FontWeight.bold,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.grey, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.grey, width: 2), // gris al enfocar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 226, 187), 
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CrearCuentaPage()),
                      );
                    },
                    child: const Text(
                      "Crear cuenta",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Caja blanca con esquinas redondeadas
                Container(
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
                        decoration: buildInputDecoration("Usuario", Icons.person),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: buildInputDecoration("Contraseña", Icons.lock),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const InicioPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[300], 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            side: const BorderSide(
                              color: Colors.grey, // borde gris
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            "Ingresar",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black, // texto negro
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
