import 'dart:async';
import 'package:flutter/material.dart';

class ReservaScreen extends StatefulWidget {
  @override
  _ReservaScreenState createState() => _ReservaScreenState();
}

class _ReservaScreenState extends State<ReservaScreen> {
  late Timer _timer;
  Duration _duration = Duration(hours: 2);

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        final seconds = _duration.inSeconds - 1;
        if (seconds < 0) {
          timer.cancel();
        } else {
          _duration = Duration(seconds: seconds);
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF6d78d9),
      ),
      body: Container(
        color: Color(0xFF1a1c23),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              child: Text(
                '${_duration.inHours.toString().padLeft(2, '0')}:${(_duration.inMinutes % 60).toString().padLeft(2, '0')}:${(_duration.inSeconds % 60).toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              backgroundColor: Color(0xFF6d78d9),
            ),
            SizedBox(height: 20),
            Card(
              color: Color(0xFF2a2d3d),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Detalles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    Divider(color: Colors.white),
                    ListTile(
                      title: Text('Parqueo', style: TextStyle(color: Colors.white)),
                      trailing: Text('Parqueo Central', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text('Ubicación', style: TextStyle(color: Colors.white)),
                      trailing: Text('Calle Principal #123', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text('Tarifa', style: TextStyle(color: Colors.white)),
                      trailing: Text('10 USD/hora', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text('Tiempo', style: TextStyle(color: Colors.white)),
                      trailing: Text('2 horas', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text('Hora', style: TextStyle(color: Colors.white)),
                      trailing: Text('15:00', style: TextStyle(color: Colors.white)),
                    ),
                    ListTile(
                      title: Text('Total', style: TextStyle(color: Colors.white)),
                      trailing: Text('20 USD', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
