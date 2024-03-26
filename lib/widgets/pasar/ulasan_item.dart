import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UlasanItem extends StatelessWidget {
  const UlasanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 40,
                minRadius: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Rara Rasya",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Beras ini benar-benar luar biasa! Saya sudah menggunakan beras ini selama beberapa bulan terakhir dan saya sangat puas dengan kualitasnya. Butir-butirnya besar, teksturnya halus, dan aroma yang sangat enak. Sangat direkomendasikan!",
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(
                width: 3,
              ),
              Text("Membantu")
            ],
          )
        ],
      ),
    );
  }
}
