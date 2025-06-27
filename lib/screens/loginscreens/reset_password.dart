import 'package:ecommerce_app/screens/loginscreens/class_for_text.dart';
import 'package:ecommerce_app/screens/loginscreens/class_for_textfields.dart';
import 'package:ecommerce_app/screens/loginscreens/login_again.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Center(
              child: Column(
                children: [
                  Image.asset('lib/assets/Forgot password.png'),
                  Gap(20),
                  Row(children: [ClassForText(text: 'Reset Password')]),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Create strong passwords easily for better security.',
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(children: [ClassForText(text: 'New Password')]),
                  Gap(10),
                  ClassForTextfields(
                    textfield: 'New Password',
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Gap(10),
                  Row(children: [ClassForText(text: 'Confirm Password')]),
                  Gap(10),
                  ClassForTextfields(
                    textfield: 'New Password',
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  Gap(20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 12,
                      ),
                      onPressed: () {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(
                        //     content: Text('Password Reset Successfully'),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LoginAgain()),
                        );
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
