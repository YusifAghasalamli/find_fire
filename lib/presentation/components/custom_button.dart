import 'package:find_fire/presentation/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  Color backgroundColor;
  Color foregroundColor;
  double? radius = 8.r;
  double height;
  double width;
  String frontText;
  Function? onPressed;
  CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.height,
      required this.width,
      required this.foregroundColor,
      required this.frontText,
      this.onPressed,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: () {
        // Add your action here
        onPressed?.call();
      },
      duration: const Duration(milliseconds: 100),
      child: SizedBox(
        height: height,
        width: width,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius!),
          ),
          child: Center(
            child: Text(
              frontText,
              style: TextStyles.headerText.copyWith(
                color: foregroundColor,
                fontSize: 24.sp,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
