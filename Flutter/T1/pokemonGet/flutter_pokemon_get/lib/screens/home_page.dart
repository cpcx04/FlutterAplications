import 'package:flutter/material.dart';
import 'package:flutter_pokemon_get/widget/character_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pokemon')),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(children: const [Pokemon()]),
      ),
    );
  }
}
