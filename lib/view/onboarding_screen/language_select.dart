import 'package:eto_ride/model/selectlanguage_model.dart';
import 'package:eto_ride/view/onboarding_screen/select_user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  int isSelect = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<SelectLanguagemodel> model = [
      SelectLanguagemodel(icon: "Aa", text: 'English'),
      SelectLanguagemodel(icon: "क", text: 'Hindi'),
      SelectLanguagemodel(icon: "ক", text: 'Bangali'),
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
                "Get prompt and reliable assistance anytime with\nour comprehensive town-wide services.",
                style: GoogleFonts.baloo2(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 41),
              SizedBox(
                height: 300,
                child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 12 / 9,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelect = index;
                        });
                        // print(model[isSelect].text);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: isSelect==index?Color(0xFF1D9B58):Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Stack(
                          children: [
                            isSelect==index?Positioned(
                              left: 8,
                              top: 9,
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF1D9B58),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ):SizedBox(),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    model[index].icon,
                                    style: GoogleFonts.baloo2(
                                      color: Colors.black,
                                      fontSize: 43.47,
                                      fontWeight: FontWeight.w700,
                                      height: 1.04,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    width: 59,
                                    height: 18.52,
                                    child: SizedBox(
                                      width: 59,
                                      height: 18.52,
                                      child: Text(
                                        model[index].text,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.72,
                                          fontFamily: 'Baloo 2',
                                          fontWeight: FontWeight.w400,
                                          height: 1.04,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 42),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectUser(),));
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
                  "Select your\nLanguage",
                  style: GoogleFonts.baloo2(
                    fontSize: 46,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset('assets/images/onboarding/translate logo.png'),
              ],
            );
  }
}
