import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/sign_up_screen.dart';
import 'package:task_manager/ui/screen/verify_with_email_screen.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get start with ',
              style: ScreenTittle,
            ),
            SizedBox(
              height: 15,
            ),
            AppTextInput(
              controller: TextEditingController(),
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            AppTextInput(
              controller: TextEditingController(),
              hintText: 'Password',
              ObscureText: true,
            ),
            SizedBox(
              height: 12,
            ),
            AppElevatedButton(
              onTap: () {},
              child: Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>  VerifyWithEmailScreen()));},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text("Don't have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>SignUpScreen()));
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
