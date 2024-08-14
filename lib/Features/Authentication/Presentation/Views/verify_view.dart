import 'package:shagaf_zag/Core/Barrel/imports.dart';


class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

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
                    GoRouter.of(context)
                        .pushReplacement(AppRouters.forgetPasswordView);
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
                    'Enter Verification Code',
                    style: ShagafFontStyles.blacksemiBold20,
                  ),
                  20.verticalSpace,
                  RichText(
                    text: TextSpan(
                        text: 'Enter code that we have sent to your email ',
                        style: ShagafFontStyles.greyNormal12,
                        children: [
                          TextSpan(
                            text: '*********45@gmail.com',
                            style: ShagafFontStyles.blackNormal12,
                          ),
                        ]),
                  ),
                  30.verticalSpace,
                  CustomOtpField(
                    numberOfFields: 6,
                    fieldWidth: 32.r,
                    borderColor: ShagafColors.secondaryColor,
                    enabledBorderColor: ShagafColors.secondaryColor,
                    focusedBorderColor:
                        ShagafColors.tertiaryColor.withOpacity(.75),
                    cursorColor: Colors.black.withOpacity(.75),
                    spacers: [
                      const SizedBox(),
                      const SizedBox(),
                      SizedBox(
                        width: 40.w,
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                    ],
                  ),
                  40.verticalSpace,
                  CustomButton(
                      label: 'Verify',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const CustomDialog();
                          },
                        );
                      }),
                  30.verticalSpace,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
