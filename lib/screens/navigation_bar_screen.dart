import 'package:flutter/material.dart';
import 'package:map_flutter/screens/cuenta.dart';
import 'map_screen.dart'; // Importa la pantalla del mapa
import 'parqueos_screen.dart';
import 'reserva.dart';

class NavigationBarScreen extends StatefulWidget {
  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    MapScreen(), // Pantalla del mapa
    ParqueosScreen(),
    ReservaScreen(), // Placeholder para Reserva
    CuentaScreen(), // Placeholder para Cuenta
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF1a1c23), // Establece el color del fondo aquí
          primaryColor:
              Color(0xFF6d78d9), // Color cuando el ítem está seleccionado
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                    color: Color(0xFF6d78d9).withOpacity(
                        0.7)), // Color cuando el ítem no está seleccionado
              ),
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Color(0xFF6d78d9).withOpacity(0.7),
          selectedItemColor: Color(0xFF6d78d9),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_parking),
              label: 'Parqueos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Reserva',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Cuenta',
            ),
          ],
        ),
      ),
    );
  }
}
