import 'package:eto_ride/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(minHeight: size.height),
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),
                _upperPart(),
                const SizedBox(height: 10),
                Text(
                  'Enter your basic details to get started',
                  style: GoogleFonts.baloo2(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First name',
                      style: GoogleFonts.baloo2(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0.90,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Please Enter first name',
                        hintStyle: GoogleFonts.baloo2(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.02,
                        ),
                        fillColor: Color(0xFFF1F5FE),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last name',
                      style: GoogleFonts.baloo2(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0.90,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Please Enter Surname',
                        hintStyle: GoogleFonts.baloo2(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.02,
                        ),
                        fillColor: Color(0xFFF1F5FE),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date of Birth',
                      style: GoogleFonts.baloo2(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0.90,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'DD/MM/YYYY',
                        hintStyle: GoogleFonts.baloo2(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.02,
                        ),
                        suffixIcon: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black.withOpacity(0.699999988079071),
                        ),
                        fillColor: Color(0xFFF1F5FE),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 54),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => OtpScreen()),
                    // );
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          // insetPadding: EdgeInsets.zero,
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 50,
                              horizontal: 30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/main images/location.png',
                                ),
                                SizedBox(height: 62),
                                Text(
                                  'Enable your location',
                                  style: GoogleFonts.baloo2(
                                    color: Color(0xFF080808),
                                    fontSize: 25.23,
                                    fontWeight: FontWeight.w500,
                                    height: 1.17,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Enable you location to find the best economical\nEV ride options nreabyl',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.baloo2(
                                    color: Colors.black,
                                    fontSize: 14.77,
                                    fontWeight: FontWeight.w400,
                                    height: 1.16,
                                  ),
                                ),
                                SizedBox(height: 62),
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
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => OtpScreen()),
                                    // );
                                  },
                                  child: Text(
                                    'Use my location',
                                    style: GoogleFonts.baloo2(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      height: 1.06,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 35),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomeScreen()),
                                        );
                                  },
                                  child: Text(
                                    'Skip for now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(
                                        0.4000000059604645,
                                      ),
                                      fontSize: 14.77,
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w400,
                                      height: 1.16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Continue',
                    style: GoogleFonts.baloo2(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.06,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _upperPart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Enter details",
          style: GoogleFonts.baloo2(fontSize: 36, fontWeight: FontWeight.w600),
        ),
        // Image.asset('assets/images/onboarding/translate_logo.png'),
      ],
    );
  }
}
