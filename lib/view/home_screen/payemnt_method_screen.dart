import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayemntMethodScreen extends StatefulWidget {
  const PayemntMethodScreen({super.key});

  @override
  State<PayemntMethodScreen> createState() => _PayemntMethodScreenState();
}

class _PayemntMethodScreenState extends State<PayemntMethodScreen> {
  PaymentType _selectedPayment = PaymentType.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: GoogleFonts.baloo2(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 50),
        child: Column(
          children: [
            // for online payment
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online Payment',
                  style: GoogleFonts.baloo2(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/main images/hostpot_image.png',
                          width: 20,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Online Payment',
                          style: GoogleFonts.baloo2(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Radio<PaymentType>(
                          activeColor: Color(0xFF1D9B58),
                          value: PaymentType.online,
                          groupValue: _selectedPayment,
                          onChanged: (PaymentType? value) {
                            setState(() {
                              _selectedPayment = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cash',
                  style: GoogleFonts.baloo2(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/main images/cash_image.png',
                          width: 20,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Cash',
                          style: GoogleFonts.baloo2(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Radio<PaymentType>(
                          activeColor: Color(0xFF1D9B58),
                          value: PaymentType.cash,
                          groupValue: _selectedPayment,
                          onChanged: (PaymentType? value) {
                            setState(() {
                              _selectedPayment = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

enum PaymentType { none, online, cash }
