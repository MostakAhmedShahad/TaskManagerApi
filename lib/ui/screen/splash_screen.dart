import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ScreenBackground(
          child: Center(
          

               
              child: SvgPicture.asset('assets/images/logo.svg',width: 160,fit: BoxFit.scaleDown,))),
    );
  }
}
