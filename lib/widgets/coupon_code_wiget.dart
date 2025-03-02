import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CouponCodeWiget extends StatelessWidget {
  const CouponCodeWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/main images/precent.png',
                      width: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Flat \$ 10% OFF",
                      style: GoogleFonts.baloo2(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    "Get 10% off on your first ride",
                    style: GoogleFonts.baloo2(
                      fontSize: 15,
                      color: Color(0xFF1D9B58),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.center,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color(0xFF1D9B58),
            ),
            child: Text(
              "TAP TO APPLY",
              style: GoogleFonts.baloo2(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
