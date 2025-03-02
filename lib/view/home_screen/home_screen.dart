import 'package:eto_ride/view/account_screen/account_main_screen.dart';
import 'package:eto_ride/view/activity_screen/activity_main_screen.dart';
import 'package:eto_ride/view/auth_screen/phoneNumber_screen.dart';
import 'package:eto_ride/view/home_screen/coupons_code_screen.dart';
import 'package:eto_ride/view/home_screen/payemnt_method_screen.dart';
import 'package:eto_ride/view/services_screen/service_main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/main images/background.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                left: 14,
                top: 22,
                child: Image.asset('assets/images/main images/logo.png'),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 14,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentindex == 0 ? Pick_up(context) : SizedBox(),
                    SizedBox(height: 12),
                    Choose_ride(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Choose_ride() {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 32, vertical: 21),
      margin: EdgeInsets.symmetric(horizontal: 14),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 21),
            child: Text(
              currentindex == 0 ? 'Choose Your Service' : 'Choose Your ride',
              style: GoogleFonts.baloo2(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 0.90,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: currentindex == 0 ? 400 : 300,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: Row(
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentindex = 0;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 47,
                              decoration: ShapeDecoration(
                                color:
                                    currentindex == 0
                                        ? null
                                        : Color(0xFFF1F5FE),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color:
                                        currentindex == 0
                                            ? Color(0xFF1D9B58)
                                            : Color(0xFFDADADA),
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              child: Text(
                                'Passenger',
                                style: GoogleFonts.baloo2(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.03,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentindex = 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 47,
                              decoration: ShapeDecoration(
                                color:
                                    currentindex == 1
                                        ? null
                                        : Color(0xFFF1F5FE),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color:
                                        currentindex == 1
                                            ? Color(0xFF1D9B58)
                                            : Color(0xFFDADADA),
                                  ),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                              child: Text(
                                'Goods',
                                style: GoogleFonts.baloo2(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.03,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13),
                  currentindex == 0
                      ? Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Recommended for you',
                            style: GoogleFonts.baloo2(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 1.44,
                            ),
                          ),
                        ),
                      )
                      : SizedBox(),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,

                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 11,
                          ),
                          margin: EdgeInsets.only(bottom: 10),
                          height: 50,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/main images/rickshaw.png',
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Eto Rickshaw',
                                    style: GoogleFonts.baloo2(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      height: 1.03,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        '2 min ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontFamily: 'Baloo 2',
                                          fontWeight: FontWeight.w400,
                                          height: 1.03,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '3 Seats',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontFamily: 'Baloo 2',
                                          fontWeight: FontWeight.w400,
                                          height: 1.03,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                '\$ 22.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.73,
                                  fontFamily: 'Baloo 2',
                                  fontWeight: FontWeight.w600,
                                  height: 1.03,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  currentindex == 0
                      ? Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CouponsCodeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFF6FE),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/main images/money.png',
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    '3  Coupons  Available',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w600,
                                      height: 1.20,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, size: 20),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PayemntMethodScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFF6FE),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/main images/2 money.png',
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Payment method',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Baloo 2',
                                      fontWeight: FontWeight.w600,
                                      height: 1.20,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.right_chevron, size: 20),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          currentindex == 0
              ? Align(
                alignment: Alignment.center,
                child: Text(
                  'You can pay via cash or UPI for you ride',
                  style: GoogleFonts.baloo2(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    height: 1.20,
                  ),
                ),
              )
              : SizedBox(),
          const SizedBox(height: 15),
          currentindex == 0
              ? Padding(
                padding: EdgeInsets.only(left: 32, right: 32, bottom: 21),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.maxFinite, 57),
                    backgroundColor: Color(0xFF1D9B58),
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
                    'Book your ride',
                    style: GoogleFonts.baloo2(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.06,
                    ),
                  ),
                ),
              )
              : SizedBox(),
          currentindex == 1
              ? Padding(
                padding: EdgeInsets.only(left: 32, right: 32, bottom: 21),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.maxFinite, 57),
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
                    'Select ride',
                    style: GoogleFonts.baloo2(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.06,
                    ),
                  ),
                ),
              )
              : SizedBox(),
        ],
      ),
    );
  }

  // ! hello
  Widget Pick_up(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 21),
      margin: EdgeInsets.symmetric(horizontal: 14),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 4,
                height: 46,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                          color: Color(0xFF1D9B58),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 1.5,
                      top: 0,
                      child: Container(
                        width: 1.5,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(color: Color(0xFF7D7A7A)),
                      ),
                    ),

                    Positioned(
                      left: 0,
                      top: 42,
                      child: Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFF1010),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick-up',
                    style: GoogleFonts.baloo2(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.04,
                    ),
                  ),
                  Text(
                    'My current location',
                    style: GoogleFonts.baloo2(
                      color: Colors.black.withOpacity(0.6600000262260437),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      height: 1.59,
                    ),
                  ),
                  Divider(),
                  Text(
                    'Drop off',
                    style: GoogleFonts.baloo2(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.04,
                    ),
                  ),
                  Text(
                    '3517   W.Gray A St.  Utice Pennsylvania 57867',
                    style: GoogleFonts.baloo2(
                      color: Colors.black.withOpacity(0.6600000262260437),
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      height: 1.59,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyNavigationbar extends StatefulWidget {
  const MyNavigationbar({super.key});

  @override
  State<MyNavigationbar> createState() => _MyNavigationbarState();
}

List<Widget> pages = [
  HomeScreen(),
  ServiceMainScreen(),
  ActivityMainScreen(),
  AccountMainScreen(),
];

class _MyNavigationbarState extends State<MyNavigationbar> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HOME',
                  style: GoogleFonts.baloo2(
                    color: Color(0xFF080808),
                    fontSize: currentindex == 0 ? 15 : 13,
                    fontWeight:
                        currentindex == 0 ? FontWeight.bold : FontWeight.w500,
                    height: 1.17,
                    letterSpacing: -0.26,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentindex = 0;
                    });
                  },
                  icon: Image.asset(
                    'assets/images/main images/1.png',
                    color:
                        currentindex == 0
                            ? Color(0xFF1D9B58)
                            : Color(0xffA6A6A6),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SERVICES',
                  style: GoogleFonts.baloo2(
                    color: Color(0xFF080808),
                    fontSize: currentindex == 1 ? 15 : 13,
                    fontWeight:
                        currentindex == 1 ? FontWeight.bold : FontWeight.w500,
                    height: 1.17,
                    letterSpacing: -0.26,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentindex = 1;
                    });
                  },
                  icon: Image.asset(
                    'assets/images/main images/2.png',
                    color:
                        currentindex == 1
                            ? Color(0xFF1D9B58)
                            : Color(0xffA6A6A6),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ACTIVITY',
                  style: GoogleFonts.baloo2(
                    color: Color(0xFF080808),
                    fontSize: currentindex == 2 ? 15 : 13,
                    fontWeight:
                        currentindex == 2 ? FontWeight.bold : FontWeight.w500,
                    height: 1.17,
                    letterSpacing: -0.26,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentindex = 2;
                    });
                  },
                  icon: Image.asset(
                    currentindex == 2
                        ? 'assets/images/main images/3-grey.png'
                        : 'assets/images/main images/3.png',
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ACCOUNT',
                  style: GoogleFonts.baloo2(
                    color: Color(0xFF080808),
                    fontSize: currentindex == 3 ? 15 : 13,
                    fontWeight:
                        currentindex == 3 ? FontWeight.bold : FontWeight.w500,
                    height: 1.17,
                    letterSpacing: -0.26,
                  ),
                ),
                const SizedBox(height: 30),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentindex = 3;
                    });
                  },
                  icon: Image.asset(
                    'assets/images/main images/4.png',
                    color:
                        currentindex == 3
                            ? Color(0xFF1D9B58)
                            : Color(0xffA6A6A6),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ],
        ),
      ),
      body: pages[currentindex],
    );
  }
}
