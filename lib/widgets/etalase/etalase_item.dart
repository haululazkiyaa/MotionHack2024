import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack2024/config/colors.dart';

class EtalaseItem extends StatelessWidget {
  const EtalaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // Get.toNamed(PasarPopup.routeName);
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/beras.png"),
                      fit: BoxFit.cover,
                    ),
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.edit),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Beras Merah",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: primaryColor,
                      size: 20,
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.roboto(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_city,
                      color: primaryColor,
                      size: 20,
                    ),
                    Text(
                      "Purwakarta",
                      style: GoogleFonts.roboto(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Rp. 35.000/ kg",
                    style: GoogleFonts.roboto(color: primaryColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
