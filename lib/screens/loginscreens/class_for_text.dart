import 'package:flutter/widgets.dart';

class ClassForText extends StatelessWidget {
  const ClassForText({super.key, required this.text});

  final String text;
  // final double? fontsize;
  // final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.left,
      text,

      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}
