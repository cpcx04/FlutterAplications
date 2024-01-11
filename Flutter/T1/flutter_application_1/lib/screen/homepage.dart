import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi primera app'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const MyButton(),
      ),
    );
  }
}
