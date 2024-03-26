import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/colors.dart';

class PasarPopup extends StatelessWidget {
  const PasarPopup({super.key});
  static const routeName = "/pasarpopup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 27),
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
                    "Lacak Pesanan",
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
              height: 12,
            ),
            Image.asset("assets/images/Gambar.png"),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Beras Merah",
                        style: GoogleFonts.roboto(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Rp. 35.000/ kg",
                        style: GoogleFonts.roboto(
                            color: primaryColor, fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          children: [
                            Container(
                              color: primaryColor,
                              child: Icon(Icons.remove),
                            ),
                            Container(
                              width: 35,
                              color: Colors.white,
                              child: Text(
                                "1",
                                style: GoogleFonts.roboto(fontSize: 17),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              color: primaryColor,
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: primaryColor,
                        size: 22,
                      ),
                      Text(
                        "Premium",
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_city,
                        color: primaryColor,
                        size: 22,
                      ),
                      Text(
                        "Purwakarta",
                        style: GoogleFonts.roboto(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: fontDarkIjo1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Toko Brasta"),
                      Spacer(),
                      Container(
                        width: 102,
                        height: 25,
                        padding: EdgeInsets.only(top: 3),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                            color: primaryColor),
                        child: Text(
                          "Kunjungi Toko",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Deskripsi Produk",
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: fontAbuTerang),
                  ),
                  Text(
                    "Beras ini kaya akan serat yang bermanfaat untuk pencernaan dan memiliki rasa yang enak dan pulen. Selain itu, beras merah juga memiliki manfaat dalam menurunkan kadar gula darah, menjaga kesehatan kulit, mengurangi risiko obesitas, dan bahkan dapat membantu mengatasi asma. Dengan kandungan nutrisi yang tinggi dan manfaat kesehatannya, beras merah dari Purwakarta menjadi pilihan yang baik untuk dikonsumsi.",
                    style: GoogleFonts.roboto(color: fontAbuTerang),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              color: primaryColor,
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    color: ijoTerangBanget,
                    child: Icon(
                      Icons.chat,
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: ijoTerangBanget,
                    child: VerticalDivider(
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 60,
                    color: ijoTerangBanget,
                    child: Icon(
                      Icons.shopify_rounded,
                      color: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 18),
                      height: 60,
                      // width: ,
                      // color: primaryColor,
                      child: Text(
                        "Beli Sekarang",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
