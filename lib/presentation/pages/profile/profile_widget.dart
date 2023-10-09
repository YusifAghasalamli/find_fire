import 'package:find_fire/presentation/components/custom_checkbar.dart';
import 'package:find_fire/presentation/resources/my_sized_box.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:find_fire/presentation/resources/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatefulWidget {
  ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final ValueNotifier<bool> _isCheckedFemale = ValueNotifier<bool>(false);

  final ValueNotifier<bool> _isCheckedMale = ValueNotifier<bool>(false);
  bool _isVisualAlarm = false;
  bool _isAudioAlarm = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      child: Material(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            const Divider(
              thickness: 1,
            ),
            MySizedBox.h12,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Name",
                    style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    width: 220.w,
                    height: 30.h,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        // enabled: false, // Disable user input
                      ),
                      controller: TextEditingController(
                          text: "Laura Whitney"), // Set the initial text
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.h24,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    width: 220.w,
                    height: 30.h,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        // enabled: false, // Disable user input
                      ),
                      controller: TextEditingController(
                          text: "+7 874 5874 54 43"), // Set the initial text
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.h24,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Email",
                    style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    width: 220.w,
                    height: 30.h,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        // enabled: false, // Disable user input
                      ),
                      controller: TextEditingController(
                          text: "Email"), // Set the initial text
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.h24,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Date of Birth",
                    style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
                    width: 220.w,
                    height: 30.h,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        // enabled: false, // Disable user input
                      ),
                      controller: TextEditingController(
                          text: "22/05/1996"), // Set the initial text
                    ),
                  ),
                ],
              ),
            ),
            MySizedBox.h24,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Gender",
                    style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                  ),
                  const Expanded(child: SizedBox()),
                  CustomCheckbox(
                      // isWhite: true,
                      isCheckedNotifier: _isCheckedFemale,
                      text: "Female"),
                  MySizedBox.w16,
                  CustomCheckbox(
                      isCheckedNotifier: _isCheckedMale, text: "Male"),
                  SizedBox(
                    width: 48.w,
                  )
                ],
              ),
            ),
            MySizedBox.h12,
            Divider(),
            MySizedBox.h16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Visual alarms",
                  style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                ),
                CupertinoSwitch(
                  activeColor: ColorConstants.primaryRed,
                  value: _isVisualAlarm,
                  onChanged: (newValue) {
                    setState(() {
                      _isVisualAlarm = newValue;
                    });
                  },
                ),
              ],
            ),
            MySizedBox.h16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Audio alarms",
                  style: TextStyles.headerText.copyWith(fontSize: 16.sp),
                ),
                CupertinoSwitch(
                  activeColor: ColorConstants.primaryRed,
                  value: _isAudioAlarm,
                  onChanged: (newValue) {
                    setState(() {
                      _isAudioAlarm = newValue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
