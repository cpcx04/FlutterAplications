import 'package:flutter/material.dart';
import 'package:flutter_httpp_get/widgets/character_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and morty'),
      ),
      body: const Row(
        children: [
          Character(),
        ],
      ),
    );
  }
}
