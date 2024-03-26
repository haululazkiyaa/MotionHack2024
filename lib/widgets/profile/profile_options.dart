import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:motionhack2024/pages/profile/lacak_pesanan.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});

  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17,
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade300),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: GoogleFonts.roboto(fontSize: 20, color: color),
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
