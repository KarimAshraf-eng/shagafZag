import 'package:shagaf_zag/Core/Barrel/imports.dart';

class OnBordingDesign extends StatelessWidget {
  final OnbordingInfo controller;
  const OnBordingDesign({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        children: [
          SvgPicture.asset(
            controller.image,
            width: 350.w,
            height: 350.h,
          ),
          20.verticalSpace,
          Text(
            controller.title,
            style: ShagafFontStyles.whiteSemiBold20,
          ),
          20.verticalSpace,
          Text(
            controller.descriptions,
            textAlign: TextAlign.center,
            style: ShagafFontStyles.yellowNormal16,
          )
        ],
      ),
    );
  }
}
