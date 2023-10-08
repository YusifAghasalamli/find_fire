import 'package:find_fire/presentation/components/custom_button.dart';
import 'package:find_fire/presentation/pages/login/login.dart';
import 'package:find_fire/presentation/pages/signup/signup.dart';
import 'package:find_fire/presentation/resources/assets.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:find_fire/presentation/resources/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          Assets.images.introBackground, // Check the path here
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 493.h,
          left: 34.w,
          child: Text(
            "Find",
            style: TextStyles.headerText
                .copyWith(fontSize: 65.sp, color: ColorConstants.primaryWhite),
          ),
        ),
        Positioned(
          top: 565.h,
          left: 84.w,
          child: Text(
            "Fire",
            style: TextStyles.headerText
                .copyWith(fontSize: 65.sp, color: ColorConstants.primaryRed),
          ),
        ),
        Positioned(
          top: 662.h,
          left: 34.w,
          child: CustomButton(
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (context) => LoginPage()));
            },
            radius: 15.r,
            width: 143.w,
            height: 54.h,
            backgroundColor: ColorConstants.primaryRed,
            foregroundColor: ColorConstants.primaryWhite,
            frontText: "Login",
          ),
        ),
        Positioned(
          top: 662.h,
          left: 197.w,
          child: CustomButton(
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) => SignupPage(),
                ),
              );
            },
            radius: 15.r,
            width: 143.w,
            height: 54.h,
            backgroundColor: ColorConstants.primaryWhite,
            foregroundColor: ColorConstants.primaryRed,
            frontText: "Sign Up",
          ),
        ),
      ],
    ));
  }
}
