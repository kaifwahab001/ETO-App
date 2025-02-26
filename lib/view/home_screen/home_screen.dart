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
                    currentindex==0?Pick_up(context):SizedBox(),
                    SizedBox(height: 12),
                    Choose_ride(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }

  Widget Choose_ride() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 21),
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
          Text(
            currentindex==0?'Choose Your Service':'Choose Your ride',
            style: GoogleFonts.baloo2(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 0.90,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                  setState(() {
                    currentindex=0;
                  });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    decoration: ShapeDecoration(
                      color: currentindex == 0 ? null : Color(0xFFF1F5FE),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: currentindex==0?Color(0xFF1D9B58):Color(0xFFDADADA)),
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
                      currentindex=1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    decoration: ShapeDecoration(
                      color: currentindex == 1 ? null : Color(0xFFF1F5FE),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: currentindex==1?Color(0xFF1D9B58):Color(0xFFDADADA)),
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
          SizedBox(height: 13),
          Text(
            'Recommended for you',
            style: GoogleFonts.baloo2(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 1.44,
            ),
          ),
          SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 11),
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
                    Image.asset('assets/images/main images/rickshaw.png'),
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
          currentindex==0?Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFEFF6FE)),
                child: Row(
                  children: [
                    Image.asset('assets/images/main images/money.png'),
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
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFEFF6FE)),
                child: Row(
                  children: [
                    Image.asset('assets/images/main images/2 money.png'),
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
                  ],
                ),
              ),
            ],
          ):SizedBox(),
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

  Widget CustomBottomNavbar() {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 170,
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
                  fontSize: 13.09,
                  fontWeight: FontWeight.w500,
                  height: 1.17,
                  letterSpacing: -0.26,
                ),
              ),
              const SizedBox(height: 45),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/main images/1.png'),
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
                  fontSize: 13.09,
                  fontWeight: FontWeight.w500,
                  height: 1.17,
                  letterSpacing: -0.26,
                ),
              ),
              const SizedBox(height: 45),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/main images/2.png'),
              ),
              const SizedBox(height: 8),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ACTIVITIES',
                style: GoogleFonts.baloo2(
                  color: Color(0xFF080808),
                  fontSize: 13.09,
                  fontWeight: FontWeight.w500,
                  height: 1.17,
                  letterSpacing: -0.26,
                ),
              ),
              const SizedBox(height: 45),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/main images/3.png'),
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
                  fontSize: 13.09,
                  fontWeight: FontWeight.w500,
                  height: 1.17,
                  letterSpacing: -0.26,
                ),
              ),
              const SizedBox(height: 45),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/main images/4.png'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ],
      ),
    );
  }
}
