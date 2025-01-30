import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottamSideDetailScreen extends StatelessWidget {
  const BottamSideDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> image = [
      "assets/images/twitter.svg",
      "assets/images/instagram.svg",
      "assets/images/linkedin.svg",
      "assets/images/youtube.svg",
      "assets/images/facebook.svg",
    ];
    return Container(
      // height: MediaQuery.of(context).size.height *1.4,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.only(left:16),
      color: Color(0xff0c1e5e),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
           SizedBox(
            height: 40,
          ),
          SvgPicture.asset(
            "assets/images/ws-cube-white-logo.svg",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Elevate Your Learning Journey with\nCutting-Edge Education Technology.",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
          Container(
            height: 40,
            // color: Colors.amber,
            margin: EdgeInsets.only(top:15),
            child: ListView.builder(
                itemCount: image.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    height: 35,
                    width: 35,
                    margin: EdgeInsets.symmetric(horizontal:5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff0c1e5e),
                      border: Border.all(color:Colors.white,width:1.0),
                      shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(
                      image[index],
                      height: 15,
                      width: 15,
                      color: Colors.white,
                     
                      fit: BoxFit.contain,
                    ),
                  );
                }),
          ),
           SizedBox(
            height: 30,
          ),
           Text(
            "Company",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: 10,
          ),
           Text(
            "Contact",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "About",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "WsCube Tech Blog",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Self-Placed Courses",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
            SizedBox(
            height: 12,
          ),
           Text(
            "Events",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 30,
          ),
           Text(
            "Our Programs",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: 10,
          ),
           Text(
            "Data Analytics",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Digital Marketing",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Web Development",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Cyber Security",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
            SizedBox(
            height: 12,
          ),
           Text(
            "App Development",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
            SizedBox(
            height: 12,
          ),
           Text(
            "Design",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
          

           SizedBox(
            height: 30,
          ),
           Text(
            "Support",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
           SizedBox(
            height: 10,
          ),
           Text(
            "Privacy Policy",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Terms & Conditions",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "WsCube Tech Blog",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "Refund Policy",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
           SizedBox(
            height: 12,
          ),
           Text(
            "FAQ's",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 50,),
          
          Divider(
            thickness: 0.2,
            indent: 10,
            endIndent: 24,
            color: Colors.grey,
            height: 40,
          ),
          //  SizedBox(
          //   height: 12,
          // ),
           Center(
             child: Text(
              "© Copyright 2025, All Rights Reserved  By WsCube Tech",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
          ),
           ),
          SizedBox(height: 20,),
        
        ],
      ),
    );
  }
}
