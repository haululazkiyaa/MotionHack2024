import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/widgets/pasar/ulasan_item.dart';

import '../../config/colors.dart';

class UlasanPage extends StatelessWidget {
  const UlasanPage({super.key});
  static const routeName = "/ulasan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 17, left: 27, right: 27, bottom: 12),
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
                            color: ijoTerangBanget),
                        child: Icon(Icons.arrow_back)),
                  ),
                  Text(
                    "Ulasan",
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Tulis Ulasan Anda...",
                                border: InputBorder.none),
                          ),
                        )),
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
              height: 10,
            ),
            UlasanItem(),
            UlasanItem(),
            UlasanItem(),
          ],
        ),
      )),
    );
  }
}
