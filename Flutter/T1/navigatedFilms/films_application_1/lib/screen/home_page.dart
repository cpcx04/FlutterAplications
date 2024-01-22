import 'package:films_application_1/widgets/navigatton_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NavigationBarApp(),
    );
  }
}
