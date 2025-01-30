import 'package:flutter/material.dart';
import 'package:wscubetech_app/widget/appbar.dart';
import 'package:wscubetech_app/widget/bottamside_detail_screen.dart';
import 'package:wscubetech_app/widget/explore_top_career_domain.dart';
import 'package:wscubetech_app/widget/explorer_career_screen.dart';
import 'package:wscubetech_app/widget/founder_message_screen.dart';
import 'package:wscubetech_app/widget/master_class_detail_screen.dart';
import 'package:wscubetech_app/widget/mentorship_program_screen.dart';
import 'package:wscubetech_app/widget/our_career_school.dart';
import 'package:wscubetech_app/widget/our_impact_number_screen.dart';
import 'package:wscubetech_app/widget/upskill_free_resources_screen.dart';

class WscubeTechPageScreen extends StatefulWidget {
  const WscubeTechPageScreen({super.key});

  @override
  State<WscubeTechPageScreen> createState() => _WscubeTechPageScreenState();
}

class _WscubeTechPageScreenState extends State<WscubeTechPageScreen>{
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [ScrollableAppBarPage()];
          },
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Free Masterclasses",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Expert-led, interactive live sessions designed to\n", // First line
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 2.5, // Adjusts the line height if needed
                        ),
                      ),
                      TextSpan(
                        text: "deepen your knowledge and skills in your\n", // Second line
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " chosen domain of interest.", // Second line
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                           height:1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                  "See all master classes >",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                  ],
                ),
                MasterClassDetailScreen(),
                SizedBox(height:40,),
                ExplorerCareerScreen(),
                ExploreTopCareerDomainScreen(),
                SizedBox(height:20,),
                OurImpactNumberScreen(),
                SizedBox(height:20,),
                MentorShipProgramScreen(),
                // SizedBox(height:40,),
                UpskillFreeResourcesScreen(),
                SizedBox(height:20,),
                OurSchoolCareerScreen(),
                SizedBox(height:20,),
                FounderMessageScreen(),
                // SizedBox(height:50,),
                BottamSideDetailScreen()

              ],
            ),
          )),
          // bottomNavigationBar: BottamSideDetailScreen(),
    );
  }
}



