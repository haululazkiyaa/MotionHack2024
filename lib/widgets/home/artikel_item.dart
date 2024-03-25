import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtikelItem extends StatelessWidget {
  const ArtikelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 172,
        // height: 192,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/petani.png"),
            SizedBox(
              height: 8,
            ),
            Text("65 orang membaca artikel ini",
                style:
                    GoogleFonts.roboto(fontSize: 10, color: Color(0xFF666666))),
            SizedBox(
              height: 6,
            ),
            Text(
              "Beli Beras langsung dari\n Petani, Dapat Harga Murah dan\nKesegaran Terjamin",
              style:
                  GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
