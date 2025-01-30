import 'package:flutter/material.dart';

class MasterClassDetailScreen extends StatelessWidget {
  const MasterClassDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // show multiple image for master class
    final List<String> imagePaths = [
      "assets/images/aushi_blinkit_data_analysis.png",
      "assets/images/aushi_cracking_data_analysis.png",
      "assets/images/aushi_interactive_powerbi.png",
      "assets/images/tuhsar_data_analytics_sql.png",
      "assets/images/tushar_data_analytic_amazone.png",
      "assets/images/pallavi_data_analytic_enginner.png",
      "assets/images/aushi_pallavi_podcast_series.png",
      "assets/images/aushi_python.png",
      "assets/images/tushar_roadmap_data_analysis.png",
      "assets/images/muskan_machine_learning.png",
    ];
    return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          // color: Colors.amber,
      child: ListView.builder(
        itemCount: imagePaths.length,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Container(
          margin: EdgeInsets.only(top: 30, left:15),
          // height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 1.7),
              image: DecorationImage(
                  image: AssetImage(imagePaths[index]),
                  fit: BoxFit.fill)),
        );
        },
      ),
    );
  }
}
