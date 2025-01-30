import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollableAppBarPage extends StatelessWidget {
  const ScrollableAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // snap: true,
      expandedHeight: 560.0,
      backgroundColor: const Color(0xFF0932c4),
      leadingWidth: 150,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: SvgPicture.asset(
          "assets/images/ws-cube-white-logo.svg",
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              "assets/images/mobile-menu-icon.svg",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ], // Height when fully expanded
      floating: false,
      pinned: true, // Keeps the AppBar visible at the top when collapsed
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0932c4), // Darker color at the bottom corners
                    Color(0xFF021a73), // Darker color at the bottom corners
                    Color(0xFF0932c4), // Lighter color at the top
                  ],
                  begin: Alignment.bottomCenter, // Start from the bottom center
                  end: Alignment.topCenter, // End at the top center
                  stops: [0.0, 0.0, 5.0], // Distribute the colors
                ),
              ),
            ),
            Positioned(
              top: 100,
              // left: 25,
              left: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Don’t Just Upskill, Get\nCareer-ready, Get Hired",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Top Mentorship Programs in Tech, Marketing, &amp; Data-",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Designed and Delivered by industry maestros.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle, // Ensures the shadow is circular
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.3), // Black shadow with opacity
                                    spreadRadius: 2, // Spread of the shadow
                                    blurRadius: 8, // Blur effect of the shadow
                                    offset: const Offset(
                                        10, 10), // Bottom-right shadow position
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // Creates a circle shape
                                child: Container(
                                  width: 40, // Set the width of the circle
                                  height: 40, // Set the height of the circle
                                  color: Colors
                                      .white, // Background color of the circle
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/images/instructors-icon.svg",
                                      height: 18,
                                      width: 18,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1.5 Lakh +",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Aspirants\n", // First line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height:
                                          2.0, // Adjusts the line height if needed
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Mentored", // Second line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle, // Ensures the shadow is circular
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.3), // Black shadow with opacity
                                    spreadRadius: 2, // Spread of the shadow
                                    blurRadius: 8, // Blur effect of the shadow
                                    offset: const Offset(
                                        10, 10), // Bottom-right shadow position
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // Creates a circle shape
                                child: Container(
                                  width: 40, // Set the width of the circle
                                  height: 40, // Set the height of the circle
                                  color: Colors
                                      .white, // Background color of the circle
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/images/courses-icon.svg",
                                      height: 18,
                                      width: 18,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1700+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Cohorts\n", // First line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height:
                                          2.0, // Adjusts the line height if needed
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Delivered", // Second line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle, // Ensures the shadow is circular
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.3), // Black shadow with opacity
                                    spreadRadius: 2, // Spread of the shadow
                                    blurRadius: 8, // Blur effect of the shadow
                                    offset: const Offset(
                                        10, 10), // Bottom-right shadow position
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    20), // Creates a circle shape
                                child: Container(
                                  width: 40, // Set the width of the circle
                                  height: 40, // Set the height of the circle
                                  color: Colors
                                      .white, // Background color of the circle
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/images/videos-icon.svg",
                                      height: 12,
                                      width: 12,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "40+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Industry\n", // First line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      height:
                                          2.0, // Adjusts the line height if needed
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Mentors", // Second line
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button action
                      print("Button Pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff194cff), // Background color
                      foregroundColor: Colors.white, // Text color
                      minimumSize: Size(310, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      elevation: 5, // Shadow elevation
                    ),
                    child: const Text(
                      'Explore Programs',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Button action
                      print("Button Pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffffffff), // Background color
                      foregroundColor: Colors.black, // Text color
                      minimumSize: Size(310, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      elevation: 5, // Shadow elevation
                    ),
                    child: const Text(
                      'Book Mentor Session',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
