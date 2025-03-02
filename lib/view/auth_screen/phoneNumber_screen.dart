import 'package:eto_ride/services/google_services.dart';
import 'package:eto_ride/view/auth_screen/otp_screen.dart';
import 'package:eto_ride/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  bool chechbox = false;

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
                Text(
                  "This number will be used for every\ncommunication. You shall received as SMS with\ncode for verification.",
                  style: GoogleFonts.baloo2(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 41),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Your name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 50,
                        child: Row(
                          children: [
                            Text(
                              "+91",
                              style: GoogleFonts.baloo2(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.04,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    hintStyle: GoogleFonts.baloo2(
                      color: Color(0xFFBCBCBC),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.04,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Checkbox(
                      activeColor: Color(0xFF1D9B58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      value: chechbox,
                      onChanged: (value) {
                        setState(() {
                          chechbox = value!;
                        });
                      },
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I have read and agreed to the  ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.68,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms and \nConditions.',
                            style: TextStyle(
                              color: Color(0xFF1D9B58),
                              fontSize: 14.68,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF1D9B58),
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 61),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width, 57),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(43),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: GoogleFonts.baloo2(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 1.06,
                        ),
                      ),
                      SizedBox(width: 5),
                      Transform.rotate(
                        angle: 40,
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),
                Center(
                  child: Text(
                    'OR Login With',
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 14.68,
                      fontFamily: 'Baloo 2',
                      fontWeight: FontWeight.w400,
                      height: 1.04,
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(113, 57),
                        side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.facebook, color: Colors.black, size: 31),
                    ),
                    SizedBox(width: 9,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(113, 57),
                        side: BorderSide(color: Colors.black),
                      ),
                      onPressed: () async{
                        try{
                          final user = await GoogleServices.SigninWithGoogle();
                          if(user!=null){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyNavigationbar(),));
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign in failed Please try again")));

                          }
                        }catch (e){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("An error is occur please try again")));

                        }
                      },
                      child: Icon(Icons.g_mobiledata, color: Colors.black, size: 45),
                    ),
                  ],
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
          "Enter your\nmobile number",
          style: GoogleFonts.baloo2(fontSize: 46, fontWeight: FontWeight.w600),
        ),
        // Image.asset('assets/images/onboarding/translate logo.png'),
      ],
    );
  }
}
