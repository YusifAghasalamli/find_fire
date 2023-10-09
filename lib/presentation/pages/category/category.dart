import 'package:find_fire/presentation/pages/category/category_widget.dart';
import 'package:find_fire/presentation/resources/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   Assets.images.loginBackground, // Check the path here
        //   width: 375.w,
        //   height: 386.h,
        //   fit: BoxFit.cover,
        // ),
        Image.network(
          "https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        ),
        Positioned(
          top: 265.h,
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
            child: CategoryWidget(),
          ),
        )
      ],
    );
  }
}
