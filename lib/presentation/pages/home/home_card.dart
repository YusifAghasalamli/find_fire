import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class HomeCard extends StatelessWidget {
  String url;
  String title;
  HomeCard({super.key, required this.url, required this.title});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onPressed: () {},
      duration: Duration(milliseconds: 100),
      child: SizedBox(
        height: 100.h,
        width: 345.w,
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.network(
                    url,

                    width: 96.w, // Set the desired width
                    height: 96.h, // Set the desired height
                    fit:
                        BoxFit.cover, // Specify the BoxFit to reshape the image
                  ),
                ),
              ),
              MySizedBox.w16,
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyles.headerText.copyWith(fontSize: 18.sp),
                      ),
                    ],
                  ),
                  MySizedBox.h12,
                  Row(
                    children: [
                      SvgPicture.asset(Assets.icons.pin),
                      MySizedBox.w8,
                      Text(
                        "Anny Akhmatovoi St, 24, Kyiv,\n Ukraine, 02000",
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
