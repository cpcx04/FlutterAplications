import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listahorizontal/widget/verticallist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best American Actor and Actresses",
                  style: GoogleFonts.robotoSlab(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))),
              Text(
                "March 2020",
                style: GoogleFonts.karla(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.grey)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
      body: const VerticalList(),
    );
  }
}
