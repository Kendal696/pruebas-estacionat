import 'package:flutter/material.dart';
import 'package:map_flutter/screens/reset_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1c23),
      appBar: AppBar(
        title: Text('Olvidé mi contraseña'),
        backgroundColor: Color(0xFF1a1c23),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_outline,
              size: 100.0,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Card(
              color: Color(0xFF2c2f36),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          size: 60.0, // Tamaño del icono aumentado
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Enviar código',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity, // Ancho máximo
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResetPasswordScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6d78d9),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(
                    color: Colors.white, // Texto del botón en blanco
                    fontSize: 18.0, // Tamaño de fuente aumentado
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
