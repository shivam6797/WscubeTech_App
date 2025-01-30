import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wscubetech_app/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
     // Delay for 3 seconds and navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context,AppRoutes.ROUTE_HOME);
  });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
       color: Color.fromARGB(255, 53, 88, 214),
          
        ),
     Center(
          child: SvgPicture.asset(
            'assets/images/ws-cube-white-logo.svg',
            fit: BoxFit.cover,
            // height: 200,
            // width: 200,
          ),
        ),
        
      ]
      );
  }
}