import 'package:flutter/material.dart';
import 'class_for_text.dart';
import 'package:gap/gap.dart';
import 'class_for_textfields.dart';
import 'class_for_bottons.dart';

class RetailerCreateAccount extends StatefulWidget {
  const RetailerCreateAccount({super.key});

  @override
  State<RetailerCreateAccount> createState() => _RetailerCreateAccountState();
}

class _RetailerCreateAccountState extends State<RetailerCreateAccount> {
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
            padding: EdgeInsetsGeometry.only(top: 40, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ClassForText(text: 'Create Account')],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Create your account and gain access to exclusive purchasing opportunities!',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/assets/retailer_create_account.png'),
                  ],
                ),
                Gap(10),
                Row(children: [ClassForText(text: 'Name')]),
                Gap(10),
                Column(
                  children: [
                    ClassForTextfields(textfield: 'Name'),
                    Gap(10),
                    Row(children: [ClassForText(text: 'Email Address')]),
                    Gap(10),
                    ClassForTextfields(
                      textfield: 'Email Address',
                      icon: Icon(Icons.email_outlined),
                    ),
                    Gap(10),
                    Row(children: [ClassForText(text: 'Password')]),
                    Gap(10),
                    ClassForTextfields(
                      textfield: 'Password',
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    Gap(10),
                    Row(children: [ClassForText(text: 'Confirm Password')]),
                    Gap(10),
                    ClassForTextfields(
                      textfield: 'Confirm Password',
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    Gap(10),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) => true,
                          activeColor: Colors.white,
                          checkColor: Colors.amber,
                        ),
                        Text(
                          'I have read and agreed ',
                          style: TextStyle(fontSize: 13),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Terms',
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                            ),
                          ),
                        ),
                        Text(' and '),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Conditions',
                              style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ClassForBottons(bottonText: 'Register'),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
