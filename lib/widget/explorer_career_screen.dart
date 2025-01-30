import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wscubetech_app/widget/career_path_details_screen.dart';

class ExplorerCareerScreen extends StatefulWidget {
  const ExplorerCareerScreen({super.key});

  @override
  State<ExplorerCareerScreen> createState() => _ExplorerCareerScreenState();
}

class _ExplorerCareerScreenState extends State<ExplorerCareerScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    // show multiple image for master class
    final List<String> carrerPathName = [
      "Data Analytics",
      "Digital Marketing",
      "Web Development",
      "Cyber Security",
      "App Development",
      "Design"
    ];
    return Container(
      margin: EdgeInsets.only(top: 30),
      // height: MediaQuery.of(context).size.height * 6,
      color: Color(0xfff5f7ff).withOpacity(0.6),
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
                  "Explore Your Career Fit",
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
                        text: "Grab actionable career insights with\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                      TextSpan(
                        text: "recommended mentorship programs designed to\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "turn your passion into a profession.",
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
                CareerDetailScreen(),

              ],
            ),
          )
        ],
      ),
    );
  }
}
