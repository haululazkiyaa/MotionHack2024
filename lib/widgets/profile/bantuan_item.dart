import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:motionhack2024/pages/profile/lacak_pesanan.dart';

class BantuanItem extends StatelessWidget {
  const BantuanItem(
      {super.key, required this.text, required this.color, required this.page});

  final String text;
  final Color color;
  final String page;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(page);
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
              Text(
                text,
                style: GoogleFonts.roboto(fontSize: 14, color: color),
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
