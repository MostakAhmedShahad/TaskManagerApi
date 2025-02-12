import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/user_profile_widget.dart';

class NewAddTask extends StatefulWidget {
  const NewAddTask({super.key});

  @override
  State<NewAddTask> createState() => _NewAddTaskState();
}

class _NewAddTaskState extends State<NewAddTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserProfileWidget(),
          Expanded(
              child: ScreenBackground(
                  child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Add new task',
                    style: ScreenTittle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AppTextInput(
                      hintText: 'Subject', controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'Description',
                      controller: TextEditingController(),
                      maxLines:5,),
              
                      SizedBox(height: 12,),
                      AppElevatedButton(child: Icon(Icons.arrow_circle_right_outlined), onTap: (){})
                      
                ],
              ),
            ),
          )))
        ],
      )),
    );
  }
}
