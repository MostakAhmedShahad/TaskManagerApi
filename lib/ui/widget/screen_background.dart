import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;
  const ScreenBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final Size ScreenSize=MediaQuery.of(context).size;
    return Stack (

       
        children: [
          SvgPicture.asset(fit: BoxFit.cover,'assets/images/background.svg',height:ScreenSize.height ,width: ScreenSize.width,),
          child
        ],
       
    );
  }
}