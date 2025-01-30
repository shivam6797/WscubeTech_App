import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreTopCareerDomainScreen extends StatelessWidget {
  const ExploreTopCareerDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> careerDomains = [
      {
        "title": "Web Development",
        "image": "assets/images/learn-webdev_icon.svg"
      },
      {
        "title": "App Development",
        "image": "assets/images/app-development-icon.svg"
      },
      {
        "title": "Data Analytics",
        "image": "assets/images/data-science-icon.svg"
      },
      {
        "title": "Digital Marketing",
        "image": "assets/images/digital-marketing-icon.svg"
      },
      {
        "title": "Cyber Security",
        "image": "assets/images/cyber-security-icon.svg"
      },
      {"title": "Design", "image": "assets/images/design-icon.svg"},
    ];
    return Container(
      width: double.infinity,
      //  height:MediaQuery.of(context).size.height * 1.5,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, // Adjust start of the gradient
          end: Alignment.bottomRight, // Adjust end of the gradient
          colors: [
            Color(0xFF002CCD), // HEX equivalent of rgb(0, 44, 205)
            Color(0xFF000825), // HEX equivalent of rgb(0, 8, 37)
          ],
          stops: [0.0800, 0.9851], // Gradient stops (optional)
        ),
        // borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1.7),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
        left: 0,
        right: 0,
            child: SvgPicture.asset(
              'assets/images/learning_background_image.svg', // Use your background image path
              fit: BoxFit.cover, // Ensures the background image fits properly
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Explore Top Career\nDomains",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
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
                        text:
                            "Discover carrer paths that truly resonate with your\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            height: 2.5),
                      ),
                      TextSpan(
                        text:
                            "pasion & explore mentorship programs that align\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "perfectly with you.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          height: 2.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height:MediaQuery.of(context).size.height * 0.75,
                    child: GridView.extent(
                      maxCrossAxisExtent: 200, // Adjust for card width
                      mainAxisSpacing: 10, // Vertical spacing
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(), // Horizontal spacing
                      children: careerDomains.map((domain) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  domain['image']!, // Use your background image path
                                   height: 50,
                                  width: 50,
                                  fit: BoxFit
                                      .cover, // Ensures the background image fits properly
                                ),
                                SizedBox(height: 10),
                                Text(
                                  domain['title']!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'See Programs >',
                                  style: TextStyle(
                                    color: Color(0xff4e75ff),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
