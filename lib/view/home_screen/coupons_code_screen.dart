import 'package:eto_ride/widgets/coupon_code_wiget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CouponsCodeScreen extends StatelessWidget {
  const CouponsCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Coupon Code', style: GoogleFonts.baloo2(
          fontSize: 28,
          fontWeight: FontWeight.w600
        ),),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: CouponCodeWiget(),
        );
      },),
    );
  }
}
