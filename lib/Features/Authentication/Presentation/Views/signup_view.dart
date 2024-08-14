import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/widgets/custom_button.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/widgets/custom_text_field.dart';
import 'package:shagaf_zag/core/theme/color.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';
import 'package:shagaf_zag/core/theme/images.dart';
import 'package:shagaf_zag/core/utils/app_routers/app_routers.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            40.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                10.horizontalSpace,
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pushReplacement(AppRouters.loginView);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 24,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            Image.asset(
              logo,
              scale: 5.r,
            ),
            30.verticalSpace,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.r),
              padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ShagafColors.foregroundColor.withOpacity(.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: ShagafFontStyles.blackNormal14,
                  ),
                  5.verticalSpace,
                  const CustomTextField(
                      hintText: 'Enter your phone number',
                      icon: Icons.phone_outlined),
                  20.verticalSpace,
                  Text(
                    'User Name',
                    style: ShagafFontStyles.blackNormal14,
                  ),
                  5.verticalSpace,
                  const CustomTextField(
                      hintText: 'Enter your name',
                      icon: Icons.person_outline_rounded),
                  20.verticalSpace,
                  Text(
                    'Password',
                    style: ShagafFontStyles.blackNormal14,
                  ),
                  5.verticalSpace,
                  const CustomTextField(
                      hintText: 'Enter your password',
                      icon: Icons.lock_outline_rounded),
                  20.verticalSpace,
                  Text(
                    'Confirm Password',
                    style: ShagafFontStyles.blackNormal14,
                  ),
                  5.verticalSpace,
                  const CustomTextField(
                      hintText: 'Confirm password',
                      icon: Icons.person_outline_rounded),
                  20.verticalSpace,
                  CustomButton(label: 'SIGN UP', onTap: () {}),
                  14.verticalSpace,
                  Center(
                    child: RichText(
                        text: TextSpan(
                            text: 'Already  have an account? ',
                            style: ShagafFontStyles.normal10,
                            children: [
                          TextSpan(
                              text: 'Log In',
                              style: ShagafFontStyles.redMedium12,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  GoRouter.of(context)
                                      .pushReplacement(AppRouters.loginView);
                                })
                        ])),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
