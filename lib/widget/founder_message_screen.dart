import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FounderMessageScreen extends StatefulWidget {
  const FounderMessageScreen({super.key});

  @override
  State<FounderMessageScreen> createState() => _FounderMessageScreenState();
}

class _FounderMessageScreenState extends State<FounderMessageScreen> {
  int currentIndex = 0; // To track the current active index
  final List<String> image = [
    "assets/images/prajjwal.png",
    "assets/images/lavanya-prasad.png",
    "assets/images/nikhil.png",
    "assets/images/pallavi-chandra.png",
    "assets/images/neetiraj.png",
    "assets/images/raunak-purohit.png",
    "assets/images/muskan-rathore.png",
    "assets/images/Rajveer.png",
    "assets/images/bhawika.png",
    "assets/images/sultan.png",
    "assets/images/tushar-jha.png",
    "assets/images/akshit-singh.png",
    "assets/images/sujal-dave.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Founder’s Message",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "Our Mission is clear. We are building to train over 10\n",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 2.5),
                ),
                TextSpan(
                  text:
                      "Crores of Career Aspirants living in under-resourced\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      "demographics of Bharat. We are tirelessly working to\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      "empower Career Seekers with Professional & Practical\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      "Tech/Non-tech Skills to help them compete globally for\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      "their dream career opportunities. Ab har career aspirant\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text:
                      "seekhega top professional skills! Kahi bhi, kabhi bhi!\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "WsCube Tech ke sath, Aapke sapno ki udaan ab hogi\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "aasan!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Stack(
              children: [
                Container(
                  height: 305,
                  width: 305,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(7, 7),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/founder-image.png', // Replace with your image path
                    width: 300,
                    height: 300,
                    // height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: CarouselSlider.builder(
              itemCount: image.length,
              options: CarouselOptions(
                autoPlay: true,
                height: MediaQuery.of(context).size.height * 0.25,
                viewportFraction: 0.48,
                initialPage: 0,
                autoPlayInterval: Duration(seconds: 1), // Speed of autoplay
                autoPlayAnimationDuration:
                    Duration(milliseconds: 1000), // Smooth transition
                autoPlayCurve:
                    Curves.easeInOut, // Linear animation for smooth effect
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
              itemBuilder: ((context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.only(top: 45),
                  child: Stack(
                    children: [
                      Container(
                        height: 143,
                        width: 143,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 5,
                              offset: Offset(7, 7),
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          image[index], // Replace with your image path
                          width: 140,
                          height: 140,
                          // height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
         
        ],
      ),
    );
  }
}
