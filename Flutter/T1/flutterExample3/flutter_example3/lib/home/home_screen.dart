import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.verified_user),
        title: const Text('Resultado'),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            color: Colors.red,
            child: Center(child: Text('Item 1')),
          ),
          Container(
            height: 150,
            color: Colors.blue,
            child: Center(child: Text('Item 1')),
          ),
          Container(
            height: 150,
            color: Colors.yellow,
            child: Center(child: Text('Item 1')),
          ),
          Container(
            height: 150,
            color: Colors.lightGreen,
            child: Center(child: Text('Item 1')),
          ),
          Container(
            height: 150,
            color: Colors.deepPurpleAccent,
            child: Center(child: Text('Item 1')),
          ),
        ],
      ),
    );
  }
}
