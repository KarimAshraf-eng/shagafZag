import 'package:shagaf_zag/Core/Barrel/imports.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
                    'Forgot Your Password?',
                    style: ShagafFontStyles.blacksemiBold20,
                  ),
                  20.verticalSpace,
                  Text(
                    'Enter your email, we will send you confirmation code',
                    style: ShagafFontStyles.greyNormal12,
                  ),
                  40.verticalSpace,
                  Text(
                    'Email',
                    style: ShagafFontStyles.blackNormal14,
                  ),
                  5.verticalSpace,
                  const CustomTextField(
                      hintText: 'Enter your email',
                      icon: person),
                  20.verticalSpace,
                  CustomButton(
                      label: 'Reset Password',
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacement(AppRouters.verifyView);
                      }),
                  20.verticalSpace,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
