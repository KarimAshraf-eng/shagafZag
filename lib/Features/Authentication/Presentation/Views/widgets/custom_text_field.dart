import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf_zag/core/theme/color.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const CustomTextField({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          isDense: true,
          contentPadding: const EdgeInsets.only(left: 5),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5,top: 5),
            child: Icon(
              icon,
              size: 14.sp,
              color: ShagafColors.faint,
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 0,
            minHeight: 40.h,
          ),
          hintText: hintText,
          hintStyle: ShagafFontStyles.faint10,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: ShagafColors.secondaryColor),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
