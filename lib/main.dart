import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Asegúrate de importar la clase LoginScreen desde su archivo correspondiente

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF1a1c23), // Azul primario
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(), // Aquí se llama a tu pantalla de inicio de sesión
    );
  }
}
