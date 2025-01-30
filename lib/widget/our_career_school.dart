import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurSchoolCareerScreen extends StatelessWidget {
  const OurSchoolCareerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.09,
      // color: Colors.pink,
      child: Stack(
        children: [
          // Blue Section
          Container(
            color: Color(0xff10287e),
            height:
                MediaQuery.of(context).size.height * 0.8, // 60% screen height
                // child: SvgPicture.asset(
                //   'assets/images/explorer_career_bg.svg', // Use your background image path
                //   fit: BoxFit.cover, // Ensures the background image fits properly
                // ),
          ),
           Positioned(
            child: SvgPicture.asset(
              'assets/images/explorer_career_bg.svg', // Use your background image path
              fit: BoxFit.cover, // Ensures the background image fits properly
            ),
          ),

          Positioned(
            child: Column(
              children: [
                  SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Our Career Schools",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                                  "Replicating online impact through offline centers\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  height: 2.5),
                            ),
                            TextSpan(
                              text: "city-by-city.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildCityCard(
                            imageUrl:
                                'assets/images/jaipur-center.png', // Replace with your image
                            cityName: 'Jaipur',
                            stateName: 'Rajasthan',
                            width: 110,
                            height: 100,
                            highlightColor: Colors.orange,
                          ),
                          SizedBox(width: 16), // Spacing between cards
                          _buildCityCard(
                            width: 90,
                            height: 60,
                            imageUrl:
                                'assets/images/jodhpur-center.png', // Replace with your image
                            cityName: 'Jodhpur',
                            stateName: 'Rajasthan',
                          ),
                          SizedBox(width: 16), // Spacing between cards
                          _buildCityCard(
                            width: 90,
                            height: 80,
                            imageUrl:
                                'assets/images/coming-center.png', // Replace with your image
                            cityName: 'Coming Soon',
                            stateName: 'to your city',
                          ),
                        ],
                      ),
              ],
            ),
          ),

          // White Section
          Positioned(
            top: 380, // Slight overlap
            left: 0,
            right: 0,
            child: Container(
                 width:double.infinity,
                 height: MediaQuery.of(context).size.height * 0.56,
                 margin: EdgeInsets.symmetric(horizontal:15,vertical:10),
                 padding: EdgeInsets.all(16),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(color:Color(0xff10287e) ,width:1.0),
                   boxShadow: [
                     BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 4),
                     ),
                   ],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     // Image
                     ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/jodhpur-team.png', // Replace with your image URL
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
                     ),
           
                     SizedBox(height: 16),
           
                     // Title
                     Text(
              'WsCube Tech Jaipur Center',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
                     ),
           
                     SizedBox(height: 8),
           
                     // Address
                     Text(
              '1st Floor, Plot no. 21, Manav Ashram Colony, Vasundhara Colony, Gopal Pura Mode, Jaipur - Rajasthan - India (302018)',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
                fontFamily: "Poppins"
              ),
              textAlign: TextAlign.center,
                     ),
           
                     SizedBox(height: 14),
           
                     // Get Direction Button
                     ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Colors.black),
                ),
              ),
              label: Text('Get Direction'),
              icon: Icon(Icons.near_me),

                     ),
           
                     SizedBox(height: 16),
           
                     // Email
                     Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.email, size: 20, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  'jaipur@wscubetech.com',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Poppins",
                    color: Colors.grey,
                  ),
                ),
              ],
                     ),
           
                     SizedBox(height: 16),
           
                     // Buttons: Request Callback and Explore Courses
                     Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Request Callback Button
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff194cff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.black ,width:1.0)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    ),
                    child: Text(
                      'Request callback',
                      style: TextStyle(color: Colors.white,fontSize:13,fontFamily:"Poppins",fontWeight:FontWeight.w600),
                    ),
                  ),
                ),
           SizedBox(width:5,),
                // Explore Courses Button
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width:1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    ),
                    child: Text(
                      'Explore Courses',
                      style: TextStyle(color: Colors.black,fontSize:13,fontFamily:"Poppins",fontWeight:FontWeight.w600),
                    ),
                  ),
                ),
              ],
                     ),
                   ],
                 ),
               ),
           )
               ],

          ),
    );
  }

  Widget _buildCityCard({
    required String imageUrl,
    required String cityName,
    required String stateName,
    required double width,
    required double height,
    Color highlightColor = Colors.transparent,
  }) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
        border: Border.all(color: highlightColor, width: 4),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imageUrl,
                height: height,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                cityName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                stateName,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
