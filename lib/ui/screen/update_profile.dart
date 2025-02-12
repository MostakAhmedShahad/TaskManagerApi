import 'package:flutter/material.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';
import 'package:task_manager/ui/widget/user_profile_widget.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
                    'Update Profile',
                    style: ScreenTittle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              color: Colors.grey),
                          child: Text('Photo'),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                color: Colors.white),
                                child: Text(''),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'Email', controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'First Name',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'LAst Name',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'Password',
                      controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppTextInput(
                      hintText: 'Mobile', controller: TextEditingController()),
                  SizedBox(
                    height: 12,
                  ),
                  AppElevatedButton(
                      child: Icon(Icons.arrow_circle_right_outlined),
                      onTap: () {})
                ],
              ),
            ),
          )))
        ],
      )),
    );
  }
}
