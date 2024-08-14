import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shagaf_zag/Core/Utils/Constatn/styles.dart';
import 'package:shagaf_zag/Features/splash_screen/data/on_boarding_info.dart';

class OnBordingDesign extends StatelessWidget {
  final OnbordingInfo controller;
  const OnBordingDesign({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(controller.image),
        20.verticalSpace,
        Text(
          controller.title,
          style: Onbording.secondStyle,
        ),
        20.verticalSpace,
        SizedBox(
          width: 342.w,
          height: 140.h,
          child: Text(
            controller.descriptions,
            textAlign: TextAlign.center,
            style: Onbording.firstStyle,
          ),
        )
      ],
    );
  }
}
