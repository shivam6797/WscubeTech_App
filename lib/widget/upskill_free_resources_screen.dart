import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class UpskillFreeResourcesScreen extends StatefulWidget {
  const UpskillFreeResourcesScreen({super.key});

  @override
  State<UpskillFreeResourcesScreen> createState() =>
      _UpskillFreeResourcesScreenState();
}

class _UpskillFreeResourcesScreenState extends State<UpskillFreeResourcesScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _svgIcons = [
    'assets/icons/pdf-icon.svg',
    'assets/icons/videos-icon.svg',
    'assets/icons/adob-icon.svg',
    'assets/icons/doubts-icon.svg',
  ];
  late AnimationController _pulseController;
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();

    // Pulse animation controller
    _pulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    // Initialize the PageController
    _pageController = PageController();

    // Automatically cycle through icons
    Future.delayed(Duration.zero, _cycleIcons);
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _cycleIcons() {
    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 2));
      if (!mounted) return false;

      setState(() {
        _currentIndex = (_currentIndex + 1) % _svgIcons.length;
      });
      return true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Upskill with our Free Resources",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                // fontFamily:"Poppins",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          RichText(
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Engage and excel with our diverse collection of\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 2.5),
                ),
                TextSpan(
                  text: "free learning resources, from quizzes to e-books\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "and interactive challenges- designed to lift your\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 1.7),
                ),
                TextSpan(
                  text: "career at zero cost!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 1.8),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              // Center Lottie animation with pulse effect
              ScaleTransition(
                scale: Tween<double>(begin: 1.2, end: 1.2).animate(
                  CurvedAnimation(
                    parent: _pulseController,
                    curve: Curves.linear,
                  ),
                ),
                child: Lottie.asset(
                  'assets/images/pulse_icon.json',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),

              // Icons sliding inside the Lottie animation
              Positioned(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  reverseDuration: const Duration(milliseconds: 400),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: SvgPicture.asset(
                    _svgIcons[_currentIndex],
                    key: ValueKey<String>(_svgIcons[_currentIndex]),
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "Interview Bites",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "Quizzes",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "Articles",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "eBooks",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          IntrinsicWidth(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
              // margin: EdgeInsets.only(top:10,left:10),
              decoration: BoxDecoration(
                color: Colors.white, // Light green background
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black, // Black shadow with some transparency
                    offset:
                        Offset(2, 2), // Horizontal and vertical shadow offset
                    blurRadius: 1, // How soft the shadow is
                    spreadRadius: 0, // How far the shadow spreads
                  ),
                ],
              ),
              child: Text(
                "Interactive Challenges",
                textAlign: TextAlign.center,
                //
                style: TextStyle(
                  color: Color(0xff4c4c4c), // Dark gray text color
                  fontSize: 14,
                  // fontFamily:"Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "Courses",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              IntrinsicWidth(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  // margin: EdgeInsets.only(top:10,left:10),
                  decoration: BoxDecoration(
                    color: Colors.white, // Light green background
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 1, // How soft the shadow is
                        spreadRadius: 0, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Text(
                    "Tools",
                    textAlign: TextAlign.center,
                    //
                    style: TextStyle(
                      color: Color(0xff4c4c4c), // Dark gray text color
                      fontSize: 14,
                      // fontFamily:"Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: 150,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // minimumSize: Size(100,40),
                primary: Color(0xFF194cff), // Button color

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  'Explore Now',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
