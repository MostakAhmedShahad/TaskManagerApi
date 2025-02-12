import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/canceled_task_screen.dart';
import 'package:task_manager/ui/screen/completed_task_screen.dart';
import 'package:task_manager/ui/screen/inproggress_task_screen.dart';
import 'package:task_manager/ui/screen/new_add_task.dart';
import 'package:task_manager/ui/screen/new_task_screen.dart';
import 'package:task_manager/ui/widget/user_profile_widget.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget> _screen = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CanceledTaskScreen(),
    InproggressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserProfileWidget(),
            Expanded(child: _screen[_selectedScreen])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>NewAddTask()));},
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          //fixedColor: Colors.white,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            _selectedScreen = index;
            setState(() {});
          },
          currentIndex: _selectedScreen,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.new_label_outlined), label: 'New'),
            BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: 'Canceled'),
            BottomNavigationBarItem(
                icon: Icon(Icons.timelapse), label: 'Progress'),
          ]),
    );
  }
}
