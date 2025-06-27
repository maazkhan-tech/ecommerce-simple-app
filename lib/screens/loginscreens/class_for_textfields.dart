import 'package:flutter/material.dart';

class ClassForTextfields extends StatelessWidget {
  const ClassForTextfields({super.key, required this.textfield, this.icon});

  final String textfield;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: textfield,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
