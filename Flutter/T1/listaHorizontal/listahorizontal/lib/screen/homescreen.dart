import 'package:flutter/material.dart';
import 'package:listahorizontal/widget/verticallist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Iranian Actor and Actresses",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "March 2020",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
      body: VerticalList(),
    );
  }
}
