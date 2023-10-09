import 'package:find_fire/presentation/pages/profile/profile_widget.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.profileColor,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Bounce(
            onPressed: () {},
            duration: const Duration(milliseconds: 100),
            child: Text(
              "Cancel",
              style: TextStyles.headerText.copyWith(fontSize: 18.sp),
            ),
          ),
          Text(
            "Edit Profile",
            style: TextStyles.headerText
                .copyWith(fontSize: 26.sp, fontWeight: FontWeight.bold),
          ),
          Bounce(
            onPressed: () {},
            duration: const Duration(milliseconds: 100),
            child: Text("Done",
                style: TextStyles.headerText.copyWith(
                    fontSize: 18.sp, color: ColorConstants.primaryRed)),
          ),
        ]),
      ),
      body: Stack(
        children: [
          Container(
            color: ColorConstants.profileColor,
          ),
          Positioned(
            top: 130.h,
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
              child: ProfileWidget(),
            ),
          ),
          Positioned(
            left: 127.w,
            top: 78.h,
            child: CircleAvatar(
              backgroundColor: ColorConstants.profileColor,
              radius: 55.r,
              child: Image.asset(
                Assets.images.profilePhoto,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 200.w,
            top: 145.h,
            child: Bounce(
              onPressed: () {},
              duration: const Duration(milliseconds: 100),
              child: CircleAvatar(
                  backgroundColor: ColorConstants.primaryWhite,
                  radius: 17.r,
                  child: SvgPicture.asset(Assets.icons.camera)),
            ),
          ),
        ],
      ),
    );
  }
}
