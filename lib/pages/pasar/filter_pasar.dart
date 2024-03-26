import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';

// import '../../config/colors.dart';

class FilterPasar extends StatelessWidget {
  const FilterPasar({super.key});
  static const routeName = "/filterpasar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 17, left: 27, right: 27, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Text(
                      "Filter",
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
                height: 31,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  "Lokasi",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: ijoTerangBanget,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pilih daerah"),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  "Kualitas Beras",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: ijoTerangBanget,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pilih kualitas"),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  "Batas Harga",
                  style: GoogleFonts.roboto(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: ijoTerangBanget,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 95,
                            height: 34,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Text(
                              "MIN",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                color: Colors.black,
                                thickness: 3,
                              ),
                            ),
                          ),
                          Container(
                            width: 95,
                            height: 34,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            child: Text(
                              "MAX",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 95,
                            height: 34,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                                color: primaryColor),
                            child: Text(
                              "Rp0 - Rp25.000",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(fontSize: 10),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 34,
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                                color: primaryColor),
                            child: Text(
                              "Rp 25.000 - Rp50.000",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(fontSize: 10),
                            ),
                          ),
                          Container(
                            width: 103,
                            height: 34,
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                                borderRadius: BorderRadius.circular(8),
                                color: primaryColor),
                            child: Text(
                              "Rp 50.000 - Rp100.000",
                              style: GoogleFonts.roboto(fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          Container(
            // color: primaryColor,
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(8)),
                      height: 70,
                      // color: ijoTerangBanget,
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Kembali",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: primaryColor,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        // border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                    height: 70,
                    // color: ijoTerangBanget,
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Atur Ulang",
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
