import 'package:eto_ride/model/select_user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int index = 0;
  List<OnboardingModel> list = [
    OnboardingModel(
      text: 'Book your reliable\neto ride in town.',
      subtext:
          'Eto Ride is your easy-to-go solution for getting\naround town with comfort.',
      imageurl: 'assets/images/onboarding/onboarding 1.png',
    ),
    OnboardingModel(
      text: 'Send yours goods\nwith eto',
      subtext:
          'Need to send goods across town?\nLook no further than Eto for a dependable and efficient\ndelivery service that meets all your shipping\nneeds in town.',
      imageurl: 'assets/images/onboarding/onboarding 2.png',
    ),
    OnboardingModel(
      text: 'Eto coin  makes\nyour ride cost later',
      subtext:
          'Discover a new way to save on transportation\ncosts with Eto Coin, the innovative digital\ncurrency that makes your rides more affordable.',
      imageurl: 'assets/images/onboarding/onboarding 3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 28),
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: 91),
              SizedBox(
                height: 580,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      index = value as int;
                    });
                    // print(index);
                  },
                  controller: pageController,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        index==0?Image.asset(list[index].imageurl):Center(child: Image.asset(list[index].imageurl,)),
                        SizedBox(height: 81),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Text(
                            list[index].text,
                            style: GoogleFonts.baloo2(
                              color: Color(0xFF080808),
                              fontSize: 47,
                              fontWeight: FontWeight.w500,
                              height: 1.17,
                              letterSpacing: -0.93,
                            ),
                          ),
                        ),
                        const SizedBox(height: 9),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Text(
                            list[index].subtext,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Baloo 2',
                              fontWeight: FontWeight.w400,
                              height: 1.04,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 42),
              index == 0
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(size.width, 57),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(43),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectUser(),));
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
                  )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          effect: ExpandingDotsEffect(dotWidth: 10,dotHeight: 5,activeDotColor: Colors.black),
                          controller: pageController,
                          count: list.length,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(113, 57),
                              backgroundColor: index==1?Colors.black:Color(0xFF1D9B58),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(43),
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectUser(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: GoogleFonts.baloo2(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 1.06,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Transform.rotate(
                                    angle: 40,
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
