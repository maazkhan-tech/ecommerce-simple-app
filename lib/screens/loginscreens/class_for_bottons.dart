import 'package:flutter/material.dart';

class ClassForBottons extends StatelessWidget {
  const ClassForBottons({
    super.key,
    required this.bottonText,
    this.snackbarText,
  });

  final String bottonText;
  final String? snackbarText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          elevation: 12,
        ),
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(snackbarText!)));
        },
        child: Text(bottonText, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
