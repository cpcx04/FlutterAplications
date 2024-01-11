import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage.dart';
import 'package:flutter_application_1/widget/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 57, 197, 197)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
