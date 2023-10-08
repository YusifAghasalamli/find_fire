import 'package:find_fire/presentation/pages/signup/signup_field_widget.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.images.loginBackground, // Check the path here
          width: 375.w,
          height: 386.h,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 161.h,
          child: Container(
            height: 651.h,
            width: 375.w,
            decoration: BoxDecoration(
              color: ColorConstants.f7,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: SignupFieldWidget(),
          ),
        )
      ],
    );
  }
}
