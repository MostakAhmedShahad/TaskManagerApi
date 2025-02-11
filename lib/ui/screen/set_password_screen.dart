import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/OTP_verification_screen.dart';
import 'package:task_manager/ui/screen/login_screen.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set Password',
                style: ScreenTittle,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Minimum lenth password is 8 with character and number combination',
                style: HeadText6,
              ),
              SizedBox(
                height: 16,
              ),
              AppTextInput(
                  hintText: 'Password', controller: TextEditingController()),
              SizedBox(
                height: 16,
              ),
              AppTextInput(
                  hintText: 'Confirm Password',
                  controller: TextEditingController()),
              SizedBox(
                height: 20,
              ),
              AppElevatedButton(
                  child: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: ()
                   {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => OtpVerificationScreen()));
                  // 
                  }
                  ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
      )),
    );
  }
}
