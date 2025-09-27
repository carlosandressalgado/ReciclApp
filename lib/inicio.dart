import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "¡Bienvenido a ReciclApp!",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Aquí puedes agregar más widgets de contenido
              Expanded(child: SizedBox()), // Para empujar el footer hacia abajo
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Volver al InicioPage (ya estamos aquí, pero sirve para otras vistas)
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const InicioPage()),
            );
          }
          // Aquí puedes agregar navegación para los otros índices
        },
      ),
    );
  }
}

