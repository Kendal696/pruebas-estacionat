import 'package:flutter/material.dart';

class ParqueosScreen extends StatefulWidget {
  @override
  _ParqueosScreenState createState() => _ParqueosScreenState();
}

class _ParqueosScreenState extends State<ParqueosScreen> {
  final List<Map<String, dynamic>> parqueos = [
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo Central',
      'ubicacion': 'Calle Principal #123',
      'tarifa': '10 Bs/hora',
      'disponible': true,
    },
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo del Norte',
      'ubicacion': 'Avenida del Parque #456',
      'tarifa': '8 Bs/hora',
      'disponible': false,
    },
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo Central',
      'ubicacion': 'Calle Principal #123',
      'tarifa': '10 Bs/hora',
      'disponible': true,
    },
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo del Norte',
      'ubicacion': 'Avenida del Parque #456',
      'tarifa': '8 Bs/hora',
      'disponible': false,
    },
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo Central',
      'ubicacion': 'Calle Principal #123',
      'tarifa': '10 Bs/hora',
      'disponible': true,
    },
    {
      'imagen': 'https://via.placeholder.com/150',
      'nombre': 'Parqueo del Norte',
      'ubicacion': 'Avenida del Parque #456',
      'tarifa': '8 Bs/hora',
      'disponible': false,
    },
    // Agrega más parqueos según necesites
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parqueos', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF6d78d9),
      ),
      body: Container(
        color: Color(0xFF1a1c23),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Buscar',
                  labelStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: parqueos.length,
                itemBuilder: (context, index) {
                  var parqueo = parqueos[index];
                  return Card(
                    color: Color(0xFF2a2d3d),
                    child: Row(
                      children: [
                        Image.network(
                          parqueo['imagen'],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  parqueo['nombre'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(parqueo['ubicacion'],
                                    style: TextStyle(color: Colors.white)),
                                Text(parqueo['tarifa'],
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                  parqueo['disponible']
                                      ? 'Disponible'
                                      : 'No disponible',
                                  style: TextStyle(
                                    color: parqueo['disponible']
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
