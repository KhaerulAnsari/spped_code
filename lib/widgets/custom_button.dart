import 'package:flutter/material.dart';
import 'package:speed_code/theme/theme.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed!();
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        backgroundColor: const Color(0xFF00AEE0),
      ),
      child: Text(
        title ?? 'Change Text Button',
        style: whiteTextStyle.copyWith(
          fontWeight: medium,
        ),
      ),
    );
  }
}
