import 'package:eto_ride/view/auth_screen/userDetails_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Upper_part(),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sent to ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w400,
                          height: 0.59,
                        ),
                      ),
                      TextSpan(
                        text: '+0000 000 000',
                        style: TextStyle(
                          color: Color(0xFF1D9B58),
                          fontSize: 26,
                          fontFamily: 'Baloo 2',
                          fontWeight: FontWeight.w400,
                          height: 0.59,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Change your Mobile Number?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Baloo 2',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 1.28,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [

                    /// first
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F5FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          if(value.length ==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ), // Adjust text line height,
                        keyboardType: TextInputType.phone,
                        cursorHeight: 27,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFF1F5FE),
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                          ), // Adjust vertical padding
                          isDense: true, // Makes the field more compact
                        ),
                      ),
                    ),
                    SizedBox(width: 10),



                    /// second
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F5FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: TextFormField(
                          onChanged: (value) {
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ), // Adjust text line height,
                        keyboardType: TextInputType.phone,
                        cursorHeight: 27,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFF1F5FE),
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                          ), // Adjust vertical padding
                          isDense: true, // Makes the field more compact
                        ),
                      ),
                    ),
                    SizedBox(width: 10),



                    //// third
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F5FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: TextFormField(
                          onChanged: (value) {
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ), // Adjust text line height,
                        keyboardType: TextInputType.phone,
                        cursorHeight: 27,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFF1F5FE),
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                          ), // Adjust vertical padding
                          isDense: true, // Makes the field more compact
                        ),
                      ),
                    ),
                    SizedBox(width: 10),




                    /// fourth
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF1F5FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: TextFormField(
                          onChanged: (value) {
                            if(value.length ==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ), // Adjust text line height,
                        keyboardType: TextInputType.phone,
                        cursorHeight: 27,
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFF1F5FE),
                          filled: true,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                          ), // Adjust vertical padding
                          isDense: true, // Makes the field more compact
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  width: 128,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Resend Code in 00:30sec',
                    style: GoogleFonts.baloo2(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      height: 0.95,
                    ),
                  ),
                ),
                SizedBox(height: 61),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width, 57),
                    backgroundColor: Color(0xFF1D9B58),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(43),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserDetailsScreen()),
                    );
                  },
                  child: Text(
                    'Next',
                    style: GoogleFonts.baloo2(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.06,
                    ),
                  ),
                ),

                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Upper_part() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Verify OTP",
          style: GoogleFonts.baloo2(fontSize: 46, fontWeight: FontWeight.w600),
        ),
        // Image.asset('assets/images/onboarding/translate logo.png'),
      ],
    );
  }
}
