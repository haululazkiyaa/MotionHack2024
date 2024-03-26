import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';

class TambahUlasan extends StatelessWidget {
  const TambahUlasan({super.key});
  static const routeName = "/tambahulasan";
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
                height: 50,
              ),
              Container(
                width: 358,
                height: 181,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                      child: Row(
                        children: [
                          Image.asset("assets/images/beraspandan.png"),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beras Merah",
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Toko Brasta")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Order Number"), Text("123456")],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Masukkan Detail Ulasan")),
              Row(
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 230,
                        margin: EdgeInsets.symmetric(horizontal: 17),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.shade200),
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                "Ketikkan Disini",
                                textAlign: TextAlign.start,
                              ),
                            )),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          )),
          Container(
            // color: primaryColor,
            height: 70,
            child: Row(
              children: [
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
                      "Kirim Ulasan",
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
