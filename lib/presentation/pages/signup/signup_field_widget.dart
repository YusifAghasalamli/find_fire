import 'package:find_fire/presentation/components/custom_button.dart';
import 'package:find_fire/presentation/components/custom_checkbar.dart';
import 'package:find_fire/presentation/pages/tabs/tabs.dart';
import 'package:find_fire/presentation/resources/resources_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupFieldWidget extends StatefulWidget {
  SignupFieldWidget({super.key});

  @override
  State<SignupFieldWidget> createState() => _SignupFieldWidgetState();
}

class _SignupFieldWidgetState extends State<SignupFieldWidget> {
  final TextEditingController _emailController = TextEditingController();
  final ValueNotifier<bool> _isCheckedRememberMe = ValueNotifier<bool>(false);

  final TextEditingController _passwordController = TextEditingController();
  bool isObs = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            MySizedBox.h24,
            Text(
              "Sign Up",
              style: TextStyles.headerText.copyWith(
                decoration: TextDecoration.none,
                fontSize: 36.sp,
              ),
            ),
            MySizedBox.h24,
            Material(
              child: SizedBox(
                height: 60.h,
                width: 325.w,
                child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Radiuses.radius8),
                      ),
                    )),
              ),
            ),
            MySizedBox.h24,
            Material(
              child: SizedBox(
                height: 60.h,
                width: 325.w,
                child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Radiuses.radius8),
                      ),
                    )),
              ),
            ),
            MySizedBox.h24,
            Material(
              child: SizedBox(
                height: 60.h,
                width: 325.w,
                child: TextField(
                  obscureText: isObs,
                  controller: _passwordController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObs = !isObs;
                          });
                        },
                        icon: isObs
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off_outlined)),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Radiuses.radius8),
                    ),
                  ),
                ),
              ),
            ),
            MySizedBox.h16,
            Material(
              color: ColorConstants.f7,
              child: Row(
                children: [
                  CustomCheckbox(
                    isCheckedNotifier: _isCheckedRememberMe,
                    text: "Remember me",
                  ),
                  const Spacer(),
                  InkWell(
                    child: Text(
                      "Forgot password?",
                      style: TextStyles.forgotPassword,
                    ),
                  )
                ],
              ),
            ),
            MySizedBox.h16,
            Center(
              child: CustomButton(
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => TabsPage(),
                    ),
                  );
                },
                height: 54.h,
                width: 325.w,
                backgroundColor: ColorConstants.primaryRed,
                foregroundColor: ColorConstants.primaryWhite,
                radius: 15.r,
                frontText: "Sign Up",
              ),
            ),
            MySizedBox.h16,
            Text(
              "Sign up with",
              style: TextStyles.headerText.copyWith(
                decoration: TextDecoration.none,
              ),
            ),
            MySizedBox.h12,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.facebook,
                  width: 32.w, // Set the desired width
                  height: 32.h, // Set the desired height
                ),
                MySizedBox.w12,
                SvgPicture.asset(
                  Assets.icons.google,
                  width: 32.w, // Set the desired width
                  height: 32.h, // Set the desired height
                ),
              ],
            ),
            MySizedBox.h32,
            Text(
              "Already have an account? Login",
              style:
                  TextStyles.greyText.copyWith(decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
