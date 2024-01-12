import 'package:flutter/material.dart';
import 'package:listahorizontal/widget/verticallist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Best Iranian Actor and Actresses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "March 2020",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
      body: VerticalList(),
    );
  }
}
