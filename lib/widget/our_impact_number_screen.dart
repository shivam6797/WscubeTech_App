import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurImpactNumberScreen extends StatelessWidget {
  const OurImpactNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Our Impact Numbers",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "Join our rapidly growing learning community and\n", // First line
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    height: 2.5, // Adjusts the line height if needed
                  ),
                ),
                TextSpan(
                  text: "acquire real-world skills.\n", // Second line
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 130,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: 10, top: 10, left: 10),
            padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Color(0xff2e85e8),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black, // Black shadow with some transparency
                  offset: Offset(2, 2), // Horizontal and vertical shadow offset
                  blurRadius: 3, // How soft the shadow is
                  spreadRadius: 1, // How far the shadow spreads
                ),
              ],
            ),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  // textDirection: TextDirection.ltr,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "150K+\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            height: 2.5),
                      ),
                      TextSpan(
                        text: "Students Trained\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            height: 0.6),
                      ),
                      TextSpan(
                        text:
                            "Empowering futures through skilled students trained by our\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            height: 3.0),
                      ),
                      TextSpan(
                        text: "EdTech expertise",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            height: 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 10, top: 20, left: 10),
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Color(0xffe78631),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 3, // How soft the shadow is
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height:8,),
                      SvgPicture.network(
                        'https://deen3evddmddt.cloudfront.net/images/home-images/interns-icon.svg', // Use your background image path
                        fit: BoxFit
                            .contain, 
                            height: 40,// Ensures the background image fits properly
                            width: 40,
                      ),
                      RichText(
                  textAlign: TextAlign.center,
                  // textDirection: TextDirection.ltr,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "3K+\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                      ),
                      TextSpan(
                        text: "Interns\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            ),
                      ),
                    
                     
                    ],
                  ),
                ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 130,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 10, top: 20, left: 10),
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Color(0xfff76767),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black, // Black shadow with some transparency
                        offset: Offset(
                            2, 2), // Horizontal and vertical shadow offset
                        blurRadius: 3, // How soft the shadow is
                        spreadRadius: 1, // How far the shadow spreads
                      ),
                    ],
                  ),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height:8,),
                      SvgPicture.network(
                        'https://deen3evddmddt.cloudfront.net/images/home-images/comains-icon.svg', // Use your background image path
                        fit: BoxFit
                            .contain, 
                            height: 40,// Ensures the background image fits properly
                            width: 40,
                      ),
                      RichText(
                  textAlign: TextAlign.center,
                  // textDirection: TextDirection.ltr,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "100+\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                      ),
                      TextSpan(
                        text: "Training Domains\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            ),
                      ),
                    
                     
                    ],
                  ),
                ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: 10, top: 20, left: 10),
            padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black, // Black shadow with some transparency
                  offset: Offset(2, 2), // Horizontal and vertical shadow offset
                  blurRadius: 3, // How soft the shadow is
                  spreadRadius: 1, // How far the shadow spreads
                ),
              ],
            ),
            child: Image.asset("assets/images/wscube_youtube_image.png",fit:BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
