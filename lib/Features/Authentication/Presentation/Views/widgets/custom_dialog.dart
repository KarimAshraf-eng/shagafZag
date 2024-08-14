import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/widgets/custom_button.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/images/restore_password_succes.svg'),
          10.verticalSpace,
          Text(
            'Success',
            style: ShagafFontStyles.blackBold20,
          ),
          10.verticalSpace,
          Text(
            'You have successfully reset your password.',
            style: ShagafFontStyles.greyNormal16,
            textAlign: TextAlign.center,
          ),
          20.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.r),
            child: CustomButton(
              height: 50,
                label: 'Done',
                onTap: () {
                  Navigator.of(context).pop();
                }),
          )
        ],
      ),
    );
  }
}
