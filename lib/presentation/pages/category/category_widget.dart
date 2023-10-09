import 'package:find_fire/presentation/components/cutom_donut.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySizedBox.h24,
        SizedBox(
          height: 80.h,
          width: 346.w,
          child: Card(
            elevation: 2,
            color: ColorConstants.profileColor,
            child: Row(
              children: [
                DoughnutChart(
                  percentage: 96,
                ),
              ],
            ),
          ),
        ),
        MySizedBox.h8,
        SizedBox(
          height: 80.h,
          width: 346.w,
          child: Card(
            elevation: 2,
            color: const Color.fromRGBO(239, 235, 235, 1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Temperature alarm",
                    style: TextStyles.headerText.copyWith(fontSize: 15.sp),
                  ),
                  MySizedBox.h8,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "25% higher than usual at 35.5 °C",
                        style: TextStyles.greyText.copyWith(fontSize: 12.sp),
                      ),
                      const Expanded(child: SizedBox()),
                      const Text("04/09/23"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        MySizedBox.h8,
        SizedBox(
          height: 80.h,
          width: 346.w,
          child: Card(
            elevation: 2,
            color: const Color.fromRGBO(239, 235, 235, 1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CO2 level alarm",
                    style: TextStyles.headerText.copyWith(fontSize: 15.sp),
                  ),
                  MySizedBox.h8,
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "25% higher than usual at 28 mmol/L",
                        style: TextStyles.greyText.copyWith(fontSize: 12.sp),
                      ),
                      const Expanded(child: SizedBox()),
                      const Text("03/09/23"),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        MySizedBox.h16,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My home address",
                style: TextStyles.headerText.copyWith(fontSize: 15.sp),
              ),
              Bounce(
                onPressed: () {},
                duration: const Duration(milliseconds: 100),
                child: Text("Edit",
                    style: TextStyles.headerText.copyWith(
                        fontSize: 15.sp, color: ColorConstants.primaryRed)),
              )
            ],
          ),
        ),
        MySizedBox.h8,
        SizedBox(
          // height: 143.h,
          // width: 345.w,
          child: Image.asset(Assets.images.map),
        )
      ],
    );
  }
}
