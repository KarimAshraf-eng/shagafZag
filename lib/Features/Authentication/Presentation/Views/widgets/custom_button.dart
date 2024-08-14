import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf_zag/core/theme/color.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final double height;
  const CustomButton({super.key, required this.label, required this.onTap, this.height = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          color: ShagafColors.primaryColor,
          height: height.h,
          width: double.maxFinite,
          child: InkWell(
            onTap: onTap,
            child: SizedBox(
              child: Center(
                  child: Text(
                label,
                style: ShagafFontStyles.whiteMedium14,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
