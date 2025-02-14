import 'package:flutter/material.dart';
import 'package:task_manager/ui/data/network_utility.dart';
import 'package:task_manager/ui/utilities/show_snack_bar_message.dart';
import 'package:task_manager/ui/utilities/style.dart';
import 'package:task_manager/ui/widget/app_elevated_button.dart';
import 'package:task_manager/ui/widget/app_text_input.dart';
import 'package:task_manager/ui/widget/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController firstNameEditingController =
      TextEditingController();
  final TextEditingController lastNameEditingController =
      TextEditingController();
  final TextEditingController mobileEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: SafeArea(
              child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join With us',
                  style: ScreenTittle,
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextInput(
                  hintText: 'Email',
                  controller: emailEditingController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email';
                    }

                    // Regular expression for validating an email
                    final RegExp emailRegex = RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

                    if (!emailRegex.hasMatch(value)) {
                      return 'Enter a valid email';
                    }

                    return null; // No error
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextInput(
                  hintText: 'First Name',
                  controller: firstNameEditingController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter first name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextInput(
                  hintText: 'Last Name',
                  controller: lastNameEditingController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter last name';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextInput(
                  hintText: 'Mobile  ',
                  controller: mobileEditingController,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter mobile number';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                AppTextInput(
                  hintText: 'Password  ',
                  controller: passwordEditingController,
                  validator: (value) {
                    if( (value?.isEmpty ?? true )&&( (value?.length??0)<6)) {
                      return 'Enter password more than 6 digit';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                AppElevatedButton(
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                    ),
                    onTap: () async {
                      if (_formkey.currentState!.validate()) {

                        final result = await NetworkUtility().postMethod (

                          'https://task.teamrabbil.com/api/v1/registration',
                          body: {
                            'email': emailEditingController.text.trim(),
                            'mobile':mobileEditingController.text.trim(),
                            'password':passwordEditingController.text,
                            'firstName':firstNameEditingController.text.trim(),
                            'lastName':lastNameEditingController.text.trim(),

                          },

                        );
                        if(result!=null &&
                        result['status']=='succes'
                        
                        ){
                          showSnackBarMessage(context,'Registration Successful');

                        }
                        else{
                          showSnackBarMessage(context,'Registration failed',true);
                        }
                         
                      }
                    }),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ))),
    );
  }
}
