import 'package:ecommerce_app/screens/loginscreens/forget_password.dart';
import 'package:ecommerce_app/screens/loginscreens/retailer_create_account.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'class_for_text.dart';
import 'class_for_textfields.dart';
import 'class_for_bottons.dart';

class SinInScreen extends StatefulWidget {
  const SinInScreen({super.key});

  @override
  State<SinInScreen> createState() => _SinInScreenState();
}

class _SinInScreenState extends State<SinInScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('lib/assets/Sin_In_Screen.png')],
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClassForText(text: 'Welcome Back!'),
                      Gap(5),
                      Text(
                        'Enter your correct credentials to login to your account',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                        ),
                      ),
                      Gap(20),
                      ClassForText(text: 'Email Address'),
                      Gap(5),
                      ClassForTextfields(
                        textfield: 'Email Address',
                        icon: Icon(Icons.email_outlined),
                      ),
                      Gap(5),
                      ClassForText(text: 'Password'),
                      Gap(5),
                      ClassForTextfields(
                        textfield: 'Password',
                        icon: Icon(Icons.remove_red_eye_outlined),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 181),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgetPassword(),
                              ),
                            );
                          },
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                      ),
                      ClassForBottons(bottonText: 'Sign in'),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: Row(
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (ctx) => RetailerCreateAccount(),
                                  ),
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
