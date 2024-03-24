import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Screen',
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1c23), // Azul marino
      appBar: AppBar(
        title: Text('Crea tu cuenta'),
        backgroundColor: Color(0xFF1a1c23),
        
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Crea tu cuenta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nombre completo',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Número de teléfono',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
                  prefixIcon: Icon(Icons.phone, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Correo electrónico',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)), // Blanco
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)), // Blanco
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity, // Ancho máximo
                child: ElevatedButton(
                  onPressed: () {
                    // Acción de registro
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6d78d9),
                  ),
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Tamaño de fuente aumentado
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
