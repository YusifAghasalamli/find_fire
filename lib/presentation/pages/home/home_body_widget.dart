// import 'package:find_fire/presentation/components/custom_button.dart';
import 'package:find_fire/presentation/pages/home/home_card.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
// import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MySizedBox.h12,
            Row(
              children: [
                MySizedBox.w12,
                Text(
                  "Addresses",
                  style: TextStyles.headerText.copyWith(fontSize: 20.sp),
                ),
                const Expanded(child: SizedBox())
              ],
            ),
            MySizedBox.h12,
            HomeCard(
              title: "Home",
              url:
                  "https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            ),
            MySizedBox.h12,
            HomeCard(
              title: "Work",
              url:
                  "https://images.pexels.com/photos/3183197/pexels-photo-3183197.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            ),
            MySizedBox.h12,
            HomeCard(
              title: "Car",
              url:
                  "https://images.pexels.com/photos/457418/pexels-photo-457418.jpeg",
            ),
            MySizedBox.h12,
            HomeCard(
              title: "Nearby Forest",
              url:
                  "https://images.pexels.com/photos/1834393/pexels-photo-1834393.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
            ),
            MySizedBox.h24,
            Bounce(
              onPressed: () {},
              duration: Duration(milliseconds: 100),
              child: Container(
                height: 62.h,
                width: 345.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(10.r),
                  // color: Colors.red,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.icons.plus),
                    MySizedBox.w16,
                    Text(
                      "Add new address",
                      style: TextStyles.headerText.copyWith(fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// CustomButton(
//                 onPressed: () {},
//                 radius: 10.r,
//                 backgroundColor: ColorConstants.primaryWhite,
//                 height: 62.h,
//                 width: 345.w,
//                 foregroundColor: Colors.black,
//                 frontText: "Add new address")

 // Bounce(
            //   onPressed: () {},
            //   duration: const Duration(microseconds: 100),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.r),
            //       // color: ColorConstants.primaryWhite
            //     ),
            //     width: 345.w,
            //     height: 62.h,
            //     child: Card(
            //       color: ColorConstants.primaryWhite,
            //       child: Center(
            //           child: Text(
            //         "Add new address",
            //         style: TextStyles.headerText.copyWith(fontSize: 18.sp),
            //       )),
            //     ),
            //   ),
            // )