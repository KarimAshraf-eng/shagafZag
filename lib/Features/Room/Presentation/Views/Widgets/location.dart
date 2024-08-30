import 'package:shagaf_zag/Core/Barrel/imports.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      location,
                      // ignore: deprecated_member_use
                      color: ShagafColors.secondaryColor,
                      width: 30,
                    ),
                    Text(
                      "Location",
                      style: ShagafFontStyles.redSemiBold16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 342.w,
                height: 145.h,
                child: Image.asset(
                  workingSpace,
                  fit: BoxFit.fill,
                ),
              ),
              20.verticalSpace,
      ],
    );
  }
}