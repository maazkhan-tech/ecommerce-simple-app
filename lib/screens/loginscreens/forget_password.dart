import 'package:ecommerce_app/screens/loginscreens/class_for_textfields.dart';
import 'package:ecommerce_app/screens/loginscreens/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'class_for_text.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  void func() {
    func();
    Navigator.pop(context);
  }

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
                  Row(children: [ClassForText(text: 'Forgot Password')]),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Please enter your Email address below. We will send you a reset password link shortly.',
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(children: [ClassForText(text: 'Email Address')]),
                  Gap(10),
                  ClassForTextfields(
                    textfield: 'Email Address',
                    icon: Icon(Icons.email_outlined),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ResetPassword()),
                        );
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(content: Text('Send Successfuly')),
                        // );
                      },
                      child: Text(
                        'Send',
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
