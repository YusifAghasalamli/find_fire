import 'package:find_fire/presentation/pages/calendar/calendar.dart';
import 'package:find_fire/presentation/pages/category/category.dart';
import 'package:find_fire/presentation/pages/home/home.dart';
import 'package:find_fire/presentation/pages/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/resources_export.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          const HomePage(),
          const CategoryPage(),
          CalendarPage(),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorConstants.primaryRed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            _pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.home,
              width: 24.r,
              height: 24.r,
              color: _currentIndex == 0
                  ? ColorConstants.primaryRed
                  : ColorConstants.darkColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.category,
              color: _currentIndex == 1
                  ? ColorConstants.primaryRed
                  : ColorConstants.darkColor,
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.calendar,
              width: 24.r,
              height: 24.r,
              color: _currentIndex == 2
                  ? ColorConstants.primaryRed
                  : ColorConstants.darkColor,
            ),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.icons.person,
              width: 24.r,
              height: 24.r,
              color: _currentIndex == 3
                  ? ColorConstants.primaryRed
                  : ColorConstants.darkColor,

              // colorFilter: ColorFilter.mode(
              //   _currentIndex == 3
              //       ? ColorConstants.primaryBlue
              //       : ColorConstants.darkColor,
              //   BlendMode.srcIn,
              // ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
