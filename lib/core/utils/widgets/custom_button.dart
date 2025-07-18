import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.borderRadius,
      required this.backgroundColor,
      required this.textColor,
      required this.text,
      this.fontSize, this.onPressed});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
final  VoidCallback?onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            ),
          ),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize),
          )),
    );
  }
}
