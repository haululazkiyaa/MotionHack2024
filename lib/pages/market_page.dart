import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/widgets/pasar/pasar_item.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Expanded(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(67),
                      bottomRight: Radius.circular(67)),
                  color: primaryColor),
              child: Column(
                children: [
                  SizedBox(
                    height: 39,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(left: 17),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFD9F0BF)),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Cari...",
                                      border: InputBorder.none),
                                ),
                              )),
                              Icon(Icons.search),
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
                      Container(
                        margin: EdgeInsets.only(right: 17),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFD9F0BF)),
                        child: Icon(
                          Icons.format_list_bulleted_rounded,
                          size: 45,
                          color: Color(0xFF666666),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Positioned(
                      // bottom: 1,
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFB3E07E)),
                    width: 358,
                    height: 155,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          "Penawaran Spesial",
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: fontDarkIjo1),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          children: [
                            SizedBox(
                              width: 89,
                            ),
                            Text(
                              "15%",
                              style: GoogleFonts.roboto(
                                  fontSize: 64, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                "Diskon",
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Setiap pembelian diatas 10kg",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, color: fontDarkIjo1),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                  PasarItem(),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
