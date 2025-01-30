import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class CareerDetailScreen extends StatefulWidget {
  const CareerDetailScreen({super.key});

  @override
  State<CareerDetailScreen> createState() => _CareerDetailScreenState();
}

class _CareerDetailScreenState extends State<CareerDetailScreen> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    double _sliderValue = 50;
    final List<String> carrerProfileName = [
      "Data Scientist",
      "Data Analyst",
      "Machine Learning Engineer",
      "Data Engineer",
    ];
    final List<String> carrerPackage = [
      "₹8L - ₹15L",
      "₹3L - ₹8L",
      "₹7L - ₹16L",
      "₹6L - ₹15L",
    ];

    final List<String> images = [
      'assets/images/flipkart-logo.svg',
      'assets/images/google.svg',
      "assets/images/wishup.svg",
      "assets/images/intellipaat.svg",
      "assets/images/infosys.svg",
      "assets/images/amazon.svg",
      "assets/images/accenture.svg",
    ];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
      width: double.infinity,
      // height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1.7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Data Analytics",
              // textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Avg.Base Salery in india",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color(0xff4e75ff),
                  fontSize: 13,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: carrerProfileName.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 10),
                    itemBuilder: (context, index) {
                      final bool isSelected = index == selectedIndex;
                      return IntrinsicWidth(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xffc2ceff)
                                  : Color(0xfffff5e6),
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.black, width: 1.0),
                            ),
                            child: Text(
                              carrerProfileName[index],
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: carrerPackage.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 15),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Stack(
                          clipBehavior: Clip
                              .none, // Allows the "tail" to overflow the main container
                          children: [
                            // Main Speech Bubble
                            IntrinsicWidth(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10.0),
                                // margin: EdgeInsets.only(top:10,left:10),
                                decoration: BoxDecoration(
                                  color: Color(
                                      0xffe1f8cb), // Light green background
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  carrerPackage[index],
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(
                                        0xff4c4c4c), // Dark gray text color
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            // Speech Bubble Tail
                            Positioned(
                              left: -8, // Adjust position to align the tail
                              top: 8, // Adjust vertical alignment
                              child: CustomPaint(
                                size: Size(20, 10), // Size of the tail
                                painter: BubbleTailPainter(),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 20, top: 15),
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Color(0xfff3f4f6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            // textDirection: TextDirection.ltr,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "1,30,000\n",
                                  style: TextStyle(
                                      color: Color(0xff4e75ff),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      height: 2.5),
                                ),
                                TextSpan(
                                  text: "Job opening in india",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.ltr,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "16%\n",
                                  style: TextStyle(
                                      color: Color(0xff4e75ff),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      height: 2.5),
                                ),
                                TextSpan(
                                  text: "Projected 10 + year rowth",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Updated last month",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Prime Hiring Destinations",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color(0xff4e75ff),
                  fontSize: 13,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 60.0,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayInterval:
                      Duration(seconds:1), // Speed of autoplay
                  autoPlayAnimationDuration:
                      Duration(milliseconds: 500), // Smooth transition
                  autoPlayCurve: Curves
                      .easeInOut, // Linear animation for smooth effect
                  enlargeCenterPage: true,
                  viewportFraction: 0.4),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SvgPicture.asset(image,
                              fit: BoxFit.contain,
                              // height: 40,
                              // width: 40,
                          )  // colorBlendMode: BlendMode.srcIn),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Recommended Professional Certificates",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color(0xff4e75ff),
                  fontSize: 13,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),
            ),
            Container(
               height: MediaQuery.of(context).size.height * 0.45,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(top:20),
                 itemBuilder: (context, index) {
                   return Container(
                 
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.only(left:8,right:8),
                  decoration: BoxDecoration(
                    color: Color(0xfff3f4f6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1.5),
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
                                fit: BoxFit.fill,
                                // height: 100,
                              ),
                            ),
                            // Lottie animation
                            Positioned.fill(
                              top: 15,
                              left: 30,
                              right: -30,
                              bottom: -0,
                              child: Lottie.asset(
                                'assets/images/data_analysis.json',
                                fit: BoxFit.contain,
                                reverse: true
                              ),
                            ),
                            // Boy image
                            Positioned(
                              top: 30,
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
                      // Bottom part with content
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
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
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
                                  Icon(Icons.star, color: Colors.orange, size: 16),
                                  Icon(Icons.star, color: Colors.orange, size: 16),
                                  Icon(Icons.star, color: Colors.orange, size: 16),
                                  Icon(Icons.star, color: Colors.orange, size: 16),
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
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.people, size: 16, color: Colors.grey),
                                  SizedBox(width: 5),
                                  Text(
                                    '120 Live Session',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.schedule,
                                      size: 16, color: Colors.grey),
                                  SizedBox(width: 5),
                                  Text(
                                    '20 Weeks',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF0932c4), // Button color
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12), // Adjust height
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'View Curriculum',
                                          style: TextStyle(fontSize: 11,fontFamily:"Poppins",fontWeight:FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5), // Spacing between buttons
                                  Expanded(
                                  
                                    child: OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12), // Adjust height
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        side: BorderSide(
                                            color: Colors.black), // Border color
                                      ),
                                      child: Text(
                                        'Learn More',
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.black,fontFamily:"Poppins",fontWeight:FontWeight.w600),
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
            SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                  "Explore all courses",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color(0xff4e75ff),
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
            ),
            Icon(FontAwesomeIcons.chevronRight,color: Color(0xff4e75ff),size: 12,),
               ],
             ),
            SizedBox(height: 20,),
               
          ],
        ),
      ),
    );
  }
}

class BubbleTailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xffd4f5c4) // Same color as the container
      ..style = PaintingStyle.fill;

    // Draw a small triangle (tail)
    final path = Path()
      ..moveTo(0, 10) // Start point
      ..lineTo(10, 5) // Draw line to top of the tail
      ..lineTo(10, 15) // Draw line to bottom of the tail
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
