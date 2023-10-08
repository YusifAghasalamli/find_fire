import 'package:find_fire/presentation/pages/login/login_field_widget.dart';
import 'package:find_fire/presentation/resources/assets.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          top: 262.h,
          child: Container(
            height: 550.h,
            width: 375.w,
            decoration: BoxDecoration(
              color: ColorConstants.f7,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: LoginFieldWidget(),
          ),
        )
      ],
    );
  }
}
