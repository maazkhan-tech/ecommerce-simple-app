import 'package:ecommerce_app/screens/home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'class_for_text.dart';

class LoginAgain extends StatelessWidget {
  const LoginAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsetsGeometry.only(right: 15, left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/loginAgain.png'),
                Gap(10),
                ClassForText(text: 'Password Reset Successful'),
                Gap(5),
                Text(
                  textAlign: TextAlign.center,
                  'Your password has been successfully reset. You can now login to your account.',
                  style: TextStyle(fontSize: 15),
                ),
                Gap(25),
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
                        MaterialPageRoute(builder: (_) => HomeScreen()),
                      );
                    },
                    child: Text(
                      'Login Agian',
                      style: TextStyle(color: Colors.white),
                    ),
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
