import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          IconButton(icon: Icon(Icons.home_outlined), onPressed: () {}),
          SizedBox(
            width: 50,
          ),
          IconButton(icon: Icon(Icons.videocam_outlined), onPressed: () {}),
          SizedBox(
            width: 50,
          ),
          IconButton(icon: Icon(Icons.book), onPressed: () {}),
          SizedBox(
            width: 50,
          ),
          IconButton(icon: Icon(Icons.person), onPressed: () {})
        ],
      ),
    );
  }
}
