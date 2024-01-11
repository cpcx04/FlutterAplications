import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Color.fromRGBO(230, 47, 23, 1),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(child: Image.asset('images/path_logo.png')),
        const Text("Beatiful"),
        ElevatedButton(onPressed: () {}, child: const Text("Hola"))
      ]),
    ));
  }
}
