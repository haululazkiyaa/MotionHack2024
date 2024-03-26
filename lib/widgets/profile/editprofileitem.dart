import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';

class EditProfileItem extends StatelessWidget {
  const EditProfileItem(
      {super.key, required this.subText, required this.textJudul});

  final String textJudul;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(page);
      },
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textJudul,
                    style:
                        GoogleFonts.roboto(fontSize: 14, color: fontAbuTerang),
                  ),
                  Text(
                    subText,
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
