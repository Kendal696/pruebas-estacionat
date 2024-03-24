import 'package:flutter/material.dart';

class CuentaScreen extends StatefulWidget {
  @override
  _CuentaScreenState createState() => _CuentaScreenState();
}

class _CuentaScreenState extends State<CuentaScreen> {
  bool _darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF6d78d9),
      ),
      body: Container(
        color: Color(0xFF1a1c23),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 60, color: Colors.white),
              backgroundColor: Color(0xFF6d78d9),
            ),
            SizedBox(height: 10),
            Text('Nombre Completo',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 20),
            ListTile(
              title: Text('Editar datos personales',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.edit, color: Colors.white),
              onTap: () {
                // Lógica para editar datos personales
              },
            ),
            ListTile(
              title:
                  Text('Notificaciones', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.notifications, color: Colors.white),
              onTap: () {
                // Lógica para notificaciones
              },
            ),
            ListTile(
              title: Text('Autos', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.directions_car, color: Colors.white),
              onTap: () {
                // Lógica para autos
              },
            ),
            ListTile(
              title: Text('Dark theme', style: TextStyle(color: Colors.white)),
              trailing: Switch(
                value: _darkTheme,
                onChanged: (value) {
                  setState(() {
                    _darkTheme = value;
                  });
                  // Lógica para cambiar el tema
                },
                activeColor: Colors.white,
              ),
            ),
            ListTile(
              title:
                  Text('Cerrar sesión', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.exit_to_app, color: Colors.white),
              onTap: () {
                // Lógica para cerrar sesión
              },
            ),
          ],
        ),
      ),
    );
  }
}
