import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class MentorShipProgramScreen extends StatefulWidget {
  const MentorShipProgramScreen({super.key});

  @override
  State<MentorShipProgramScreen> createState() =>
      _MentorShipProgramScreenState();
}

class _MentorShipProgramScreenState extends State<MentorShipProgramScreen> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0; // To track the current active index
  int selectedIndex = 0;
  final List<String> carrerPathName = [
    "Data Analytics",
    "Digital Marketing",
    "Web Development",
    "Cyber Security",
    "App Development",
    "Design"
  ];
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    // Listening to the page changes in the carousel
    pageController.addListener(() {
      int currentPage = pageController.page!.round();
      if (currentIndex != currentPage) {
        setState(() {
          currentIndex = currentPage;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      // height: MediaQuery.of(context).size.height * 6,
      color: Color(0xfff5f7ff),
      // color: Colors.amber,
      child: Stack(
        children: [
          Positioned(
            child: SvgPicture.asset(
              'assets/images/explorer_career_bg.svg', // Use your background image path
              fit: BoxFit.cover, // Ensures the background image fits properly
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "MentorShip Program",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
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
                        text:
                            "Choose your program, get certified, and grab new\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                      TextSpan(
                        text: "career opportunities.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(top: 30, left: 10),
                  // color: Colors.amber,
                  child: ListView.builder(
                    itemCount: carrerPathName.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final bool isSelected = index == selectedIndex;
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: IntrinsicWidth(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xFF0932c4)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 1.7),
                                boxShadow: isSelected
                                    ? [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(
                                              0.3), // Black shadow with opacity
                                          spreadRadius:
                                              2, // Spread of the shadow
                                          blurRadius:
                                              8, // Blur effect of the shadow
                                          offset: const Offset(5,
                                              10), // Bottom-right shadow position
                                        ),
                                      ]
                                    : [],
                              ),
                              child: Center(
                                child: Text(
                                  carrerPathName[index],
                                  textAlign: TextAlign.center,
                                  maxLines:
                                      1, // Restricts text to a single line
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 11,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: CarouselSlider.builder(
                    carouselController: _carouselController,
                    itemCount: 2,
                    options: CarouselOptions(
                      autoPlay: true,
                      height: MediaQuery.of(context).size.height * 0.72,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      autoPlayInterval:
                          Duration(seconds: 2), // Speed of autoplay
                      autoPlayAnimationDuration:
                          Duration(milliseconds: 800), // Smooth transition
                      autoPlayCurve: Curves
                          .easeInOut, // Linear animation for smooth effect
                      enableInfiniteScroll: true,
                      enlargeCenterPage: false,
                      scrollPhysics: ClampingScrollPhysics(),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index % 2;
                        });
                        // print('Current index2: $currentIndex');
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        // height: MediaQuery.of(context).size.height * 0.45,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 1.5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors
                                  .black, // Black shadow with some transparency
                              offset: Offset(6,
                                  6), // Horizontal and vertical shadow offset
                              blurRadius: 5, // How soft the shadow is
                              spreadRadius: 2, // How far the shadow spreads
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Stack(
                                children: [
                                  // Background image
                                  Positioned.fill(
                                    child: Image.asset(
                                      'assets/images/background_boy_image.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  // Lottie animation
                                  Positioned.fill(
                                    top: 15,
                                    left: 60,
                                    right: -50,
                                    child: Lottie.asset(
                                      'assets/images/data_analysis.json',
                                      fit: BoxFit.contain,
                                      reverse: true,
                                    ),
                                  ),
                                  // Boy image
                                  Positioned(
                                    top: 60,
                                    bottom: -30, // Adjust position
                                    left: -10, // Adjust position
                                    child: Image.asset(
                                      'assets/images/boy_image.png',
                                      height: 100,
                                      fit: BoxFit.contain, // Adjust size
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Bottom content
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Data Analytics Mentorship Program',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      textAlign: TextAlign.start,
                                      textDirection: TextDirection.ltr,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                "Join this 20 weeks, Job-ready Program to master\n",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "Data Analytics from scratch with Top Data\n",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "Analysts from Microsoft, KPMG, Amazon, and\n",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Rapido.",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                        Icon(Icons.star_half,
                                            color: Colors.orange, size: 16),
                                        SizedBox(width: 5),
                                        Text(
                                          '(1,032)',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontFamily: "Poppins"),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Targeted Job Role:',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      margin: EdgeInsets.only(top: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.grey, width: 1.5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Data Analytics',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      margin: EdgeInsets.only(top: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.black, width: 0.9),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors
                                                .black, // Black shadow with some transparency
                                            offset: Offset(1,
                                                1), // Horizontal and vertical shadow offset
                                            blurRadius:
                                                2, // How soft the shadow is
                                            spreadRadius:
                                                0, // How far the shadow spreads
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          // First Item
                                          Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 229, 231, 233),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.calendar_month_outlined,
                                                  color: Colors.green,
                                                  size: 20,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Duration',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    '2 Months',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          // Second Item
                                          Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 229, 231, 233),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.video_call,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Live Sessions',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  Text(
                                                    '46',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(
                                                  0xFF0932c4), // Button color
                                              padding: EdgeInsets.symmetric(
                                                  vertical:
                                                      12), // Adjust height
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  side: BorderSide(
                                                      color: Colors.black,
                                                      width: 1.5)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Download Curriculum',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: "Poppins",
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                10), // Spacing between buttons
                                        Expanded(
                                          child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  vertical:
                                                      10), // Adjust height
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              side: BorderSide(
                                                  color: Colors
                                                      .black), // Border color
                                            ),
                                            child: Text(
                                              'Learn More',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.black,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(2, (valueIndex) {
                    // print('Current index: $valueIndex');
                    return AnimatedPadding(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.symmetric(
                        horizontal: currentIndex == valueIndex ? 6 : 3,
                      ),
                      child: Container(
                        width: currentIndex == valueIndex ? 10 : 8,
                        height: 10,
                        decoration: BoxDecoration(
                          color: currentIndex == valueIndex
                              ? Colors.blue
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 50),
              ],
            ),
          )
        ],
      ),
    );
  }
}
