import 'package:eto_ride/model/select_user_model.dart';
import 'package:eto_ride/model/selectlanguage_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({super.key});

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<SelectLanguagemodel> model = [
      SelectLanguagemodel(icon: "Aa", text: 'English'),
      SelectLanguagemodel(icon: "क", text: 'Hindi'),
      SelectLanguagemodel(icon: "ক", text: 'Bangali'),
    ];
    List<SelectUserModel> userlist= [
      SelectUserModel(text: 'Use Eto rides as\nPassenger', subtext: 'This number will be used for\nevery communication.'),
      SelectUserModel(text: 'Join us as eto\ndriver partner', subtext: 'This number will be used for\nevery communication.'),
    ];

    return Scaffold(
      body: SafeArea(
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
                "This number will be used for every\ncommunication.",
                style: GoogleFonts.baloo2(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 41),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelect = 0;
                  });
                },
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.all(25),
                  height: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isSelect == 0? Color(0xFF1D9B58) : null,
                    border: isSelect == 0 ? null : Border.all(width: 1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userlist[0].text,
                            style: GoogleFonts.baloo2(
                              color: isSelect==0?Colors.white:Colors.black,
                              fontSize: 27.38,
                              fontWeight: FontWeight.w500,
                              height: 1.16,
                              letterSpacing: -0.54,
                            ),
                          ),
                          SizedBox(height: 11),
                          Text(
                            userlist[0].subtext,
                            style: GoogleFonts.baloo2(
                              color: isSelect==0?Colors.white:Colors.black,
                              fontSize: 16.63,
                              fontWeight: FontWeight.w500,
                              height: 1.16,
                              letterSpacing: -0.33,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/images/onboarding/person logo.png',color: isSelect==0?Colors.white:Colors.black),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelect = 1;
                  });
                },
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.all(25),
                  height: 165,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: isSelect == 1 ? Color(0xFF1D9B58) : null,
                    border: isSelect == 1 ? null : Border.all(width: 1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userlist[1].text,
                            style: GoogleFonts.baloo2(
                              color:
                                  isSelect == 1 ? Colors.white : Colors.black,
                              fontSize: 27.38,
                              fontWeight: FontWeight.w500,
                              height: 1.16,
                              letterSpacing: -0.54,
                            ),
                          ),
                          SizedBox(height: 11),
                          Text(
                            userlist[1].subtext,
                            style: GoogleFonts.baloo2(
                              color:
                                  isSelect == 1 ? Colors.white : Colors.black,
                              fontSize: 16.63,
                              fontWeight: FontWeight.w500,
                              height: 1.16,
                              letterSpacing: -0.33,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/onboarding/passenger logo.png',
                        color: isSelect == 1 ? Colors.white : Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(size.width, 57),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(43),
                  ),
                ),
                onPressed: () {},
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
              Spacer(),
            ],
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
          "Continue with\nEto rides as an?",
          style: GoogleFonts.baloo2(fontSize: 46, fontWeight: FontWeight.w600),
        ),
        // Image.asset('assets/images/onboarding/translate logo.png'),
      ],
    );
  }
}
