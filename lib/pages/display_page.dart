import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';
import 'package:motionhack2024/widgets/etalase/etalase_item.dart';
import 'package:motionhack2024/widgets/pasar/pasar_item.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the button press
        },
        shape: CircleBorder(),
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
          child: Expanded(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0, -1.0),
                  image: AssetImage("assets/images/texture.png"),
                ),
                color: primaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      width: 98,
                      height: 89,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/petani.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text(
                          "Toko Brasta",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.maps_home_work,
                                size: 20, color: Color(0xFF666666)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Palembang",
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Color(0xFF666666)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 8,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                  EtalaseItem(),
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
