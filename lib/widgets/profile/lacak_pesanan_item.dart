import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';

class LacakPesananItem extends StatelessWidget {
  const LacakPesananItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 357,
      height: 126,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Image.asset("assets/images/beraspandan.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Beras Pandan",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
                Text(
                  "Dalam Pengiriman",
                  style: GoogleFonts.roboto(color: primaryColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
