import 'package:flutter/material.dart';

class InfoCar extends StatefulWidget {
  @override
  _InfoCarState createState() => _InfoCarState();
}

class _InfoCarState extends State<InfoCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Corvette C7 Info'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://cutewallpaper.org/24/corvette-png/corvette-png-free-image-png-all.png', // Reemplaza con la URL de la imagen del Corvette C7
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Modelo: Corvette C7',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Año: 2014',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Motor: V8',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Potencia: 455 hp',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Velocidad máxima: 185 mph',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Descripción:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'El Corvette C7 es un automóvil deportivo de alto rendimiento producido por Chevrolet. Con su elegante diseño y potente motor V8, es una obra maestra de la ingeniería automotriz.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
