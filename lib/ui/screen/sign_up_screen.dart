 

import 'package:flutter/material.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(

            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Join With us',style: ScreenTittle,),
                  SizedBox(height: 10,),
                  AppTextInput(hintText: 'Email', controller: TextEditingController()),
                   SizedBox(height: 10,),
                    AppTextInput(hintText: 'First Name', controller: TextEditingController()),
                       SizedBox(height: 10,),
                    AppTextInput(hintText: 'Last Name', controller: TextEditingController()),
                       SizedBox(height: 10,),
                    AppTextInput(hintText: 'Mobile  ', controller: TextEditingController()),
                      SizedBox(height: 10,),
                    AppTextInput(hintText: 'Password  ', controller: TextEditingController()),
                    


              
                ],
              ),
            ),

          )  )
      ),
    );
  }
}