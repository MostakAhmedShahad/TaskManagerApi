import 'package:flutter/material.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ScreenBackground(child: 
      Column(
        children: [
          
        ],
      )),
       
    );
  }
}