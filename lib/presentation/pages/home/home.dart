import 'package:find_fire/presentation/pages/home/home_body_widget.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              SvgPicture.asset(Assets.icons.logo),
              Text(
                "Find",
                style: TextStyles.headerText
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
              Text(
                "Fire",
                style: TextStyles.headerText.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.primaryRed),
              ),
              const Expanded(child: SizedBox()),
              Bounce(
                duration: const Duration(milliseconds: 100),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icons.phone),
                    MySizedBox.w8,
                    Text(
                      "Emergency",
                      style: TextStyles.headerText.copyWith(fontSize: 14.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: const HomeBodyWidget());
  }
}
