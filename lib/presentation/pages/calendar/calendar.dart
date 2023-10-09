import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarPage extends StatelessWidget {
  final List<String> notifications = [
    "Install smoke alarms on every level of your home, inside bedrooms and outside sleeping areas.",
    "Test smoke alarms every month. If they're not working, change the batteries.",
    "Talk with all family members about a fire escape plan and practice the plan twice a year.",
    "Put cigarettes out properly. Store flammable liquids and combustible materials properly."
    // Add more notifications as needed
  ];
  CalendarPage({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MySizedBox.h24,
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Text(
              "Precautions",
              style: TextStyles.headerText.copyWith(fontSize: 20.sp),
            ),
          ),
          MySizedBox.h4,
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                // Create a circle with a number
                Widget leading = Stack(children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: ColorConstants.primaryRed,
                    child: Text(
                      (index + 1).toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 6.h,
                    left: 10.w,
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.white,
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ]);

                String notification = notifications[index];
                return ListTile(
                  leading: leading,
                  title: Text(notification),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
