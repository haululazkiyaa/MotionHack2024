import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/widgets/profile/bantuan_item.dart';

import '../../config/colors.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({super.key});
  static const routeName = "/bantuan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "FAQs",
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
              height: 19,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFD9F0BF)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Cari...", border: InputBorder.none),
                          ),
                        )),
                        Icon(
                          Icons.search,
                          color: Color(0xFF666666),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                "Topik Populer",
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Cara Update Profile",
              page: "",
            ),
            SizedBox(
              height: 11,
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Cara Memverifikasi Akun",
              page: "",
            ),
            SizedBox(
              height: 11,
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Cara Menghubungkan Bank",
              page: "",
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Text(
                "Topik Lainnya",
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Masalah Pembayaran",
              page: "",
            ),
            SizedBox(
              height: 11,
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Apakah akun saya aman?",
              page: "",
            ),
            SizedBox(
              height: 11,
            ),
            BantuanItem(
              color: fontAbuTerang,
              text: "Cara Merubah Harga",
              page: "",
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}
