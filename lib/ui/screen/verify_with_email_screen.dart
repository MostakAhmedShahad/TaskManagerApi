import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/login_screen.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class VerifyWithEmailScreen extends StatefulWidget {
  const VerifyWithEmailScreen({super.key});

  @override
  State<VerifyWithEmailScreen> createState() => _VerifyWithEmailScreenState();
}

class _VerifyWithEmailScreenState extends State<VerifyWithEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      body: ScreenBackground(child: 
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Email Address',style: ScreenTittle,),
              SizedBox(height: 6,),
              Text('A 6 digit pin will send to your Email', style: HeadText6,),
              SizedBox(height: 16,),
              AppTextInput(hintText: 'Email Address', controller: TextEditingController()),
              SizedBox(height: 20,),
              AppElevatedButton(
                child: Icon(Icons.arrow_circle_right_outlined,
                color: Colors.white,) ,
                onTap: (){}),

                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text("Have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
                        },
                        child: Text(
                          ' Sign In',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )


              
          
            ],
          ),
        ),
      )

      
      ),
    );
  }
}