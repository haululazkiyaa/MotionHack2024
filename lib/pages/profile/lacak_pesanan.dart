import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/widgets/profile/lacak_pesanan_item.dart';
// import 'package:motionhack2024/pages/profile_page.dart';

class LacakPesanan extends StatelessWidget {
  const LacakPesanan({super.key});
  static const routeName = "/lacak_pesanan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 27),
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Colors.white),
                      child: Icon(Icons.arrow_back)),
                ),
                Text(
                  "Lacak Pesanan",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 1,
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          LacakPesananItem(),
          LacakPesananItem(),
          LacakPesananItem(),
        ],
      )),
    );
  }
}
