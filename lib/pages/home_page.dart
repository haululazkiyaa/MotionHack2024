import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motionhack2024/config/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, -2.0),
            image: AssetImage("assets/images/texture.png"),
          ),
          color: primaryColor,
        ),
        child: SafeArea(
          child: Column(
            children: [Text("Tes"), Text("Tes")],
          ),
        ),
      ),
    );
  }
}
