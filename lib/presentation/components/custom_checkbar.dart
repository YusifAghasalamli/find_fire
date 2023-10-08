import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatelessWidget {
  final ValueNotifier<bool> isCheckedNotifier;
  final bool isWhite;
  final String text;
  final Function? onChanged;
  const CustomCheckbox(
      {super.key,
      required this.isCheckedNotifier,
      required this.text,
      this.onChanged,
      this.isWhite = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isCheckedNotifier.value = !isCheckedNotifier.value;
        if (onChanged != null) {
          onChanged!();
        }
      },
      child: ValueListenableBuilder<bool>(
          valueListenable: isCheckedNotifier,
          builder: (context, value, _) {
            return Container(
              color: ColorConstants.f7,
              child: Row(
                children: [
                  Container(
                    width: 20.r,
                    height: 20.r,
                    decoration: BoxDecoration(
                        border: !isWhite
                            ? Border.all(
                                color: value
                                    ? ColorConstants.primaryBlue
                                    : ColorConstants.darkColor,
                                width: 2,
                              )
                            : null,
                        borderRadius: BorderRadius.circular(4),
                        color: value && !isWhite
                            ? ColorConstants.primaryBlue
                            : Colors.white),
                    child: Container(
                      child: value
                          ? Icon(
                              Icons.check,
                              size: Radiuses.radius16,
                              color: isWhite
                                  ? ColorConstants.primaryBlue
                                  : Colors.white,
                            )
                          : null,
                    ),
                  ),
                  MySizedBox.w8,
                  Container(
                    color: ColorConstants.f7,
                    child: Text(text,
                        style: isCheckedNotifier.value
                            ? TextStyles.selectedNavBar
                            : TextStyles.unselectedNavBar),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
