import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/pages/market_page.dart';
import 'package:motionhack2024/widgets/home/artikel_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, -1.0),
            image: AssetImage("assets/images/texture.png"),
          ),
          color: primaryColor,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 66,
                ),
                Text(
                  "Kualitas Tanpa Kompromi, Beli\nLangsung Dari Petani!",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 47,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 47,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(MarketPage.routeName);
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 33),
                              height: 98,
                              width: 154,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFD9F0BF),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Pasar Beras",
                                        style: GoogleFonts.roboto(
                                            fontSize: 16, color: fontDarkIjo1)),
                                    Row(
                                      children: [
                                        Text(
                                          "Tempat membeli\nberas",
                                          style: GoogleFonts.roboto(
                                              fontSize: 10,
                                              color: fontDarkIjo2),
                                        ),
                                        Icon(
                                          Icons.house_siding_sharp,
                                          size: 45,
                                          color: fontDarkIjo1,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 33),
                            height: 98,
                            width: 154,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFD9F0BF)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Etalase Beras",
                                      style: GoogleFonts.roboto(
                                          fontSize: 16, color: fontDarkIjo1)),
                                  Row(
                                    children: [
                                      Text(
                                        "Tempat menjual\nberas",
                                        style: GoogleFonts.roboto(
                                            fontSize: 10, color: fontDarkIjo2),
                                      ),
                                      Icon(
                                        Icons.list_alt,
                                        size: 45,
                                        color: fontDarkIjo1,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 39,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 5,
                              height: 23,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Artikel",
                              style: GoogleFonts.roboto(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            children: [
                              ArtikelItem(),
                              ArtikelItem(),
                              ArtikelItem(),
                              ArtikelItem()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
