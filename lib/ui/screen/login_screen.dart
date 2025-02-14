import 'package:flutter/material.dart';
import 'package:task_manager/ui/data/network_utility.dart';
import 'package:task_manager/ui/screen/main_bottom_nav_bar.dart';
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
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formkey,
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
                controller: _emailTextEditingController,
                hintText: 'Email',
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter your Email';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              AppTextInput(
                controller: _passwordTextEditingController,
                hintText: 'Password',
                validator: (value) {
                  if ((value?.isEmpty ?? true) && ((value?.length ?? 0) < 6)) {
                    return 'Enter password more than 6 digit';
                  } else {
                    return null;
                  }
                },
                ObscureText: true,
              ),
              SizedBox(
                height: 12,
              ),
              AppElevatedButton(
                onTap: () async {
                  if (_formkey.currentState!.validate()) {
                    final result = await NetworkUtility().postMethod(
                        'https://task.teamrabbil.com/api/v1/login',
                        body: {
                          'email': _emailTextEditingController.text.trim(),
                          'password': _passwordTextEditingController.text
                        });
                    if (result != null && result['status'] == 'success') {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainBottomNavBar()),
                          (route) => false);
                    }
                  }
                },
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyWithEmailScreen()));
                    },
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
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
        ),
      )),
    );
  }
}
