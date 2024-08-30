import 'package:shagaf_zag/Core/Barrel/imports.dart';

class LocationName extends StatelessWidget {
  const LocationName({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      top: 286,
      child: Container(
        width: 75.w,
        height: 27.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ShagafColors.secondaryColor),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: SvgPicture.asset(location),
            ),
            Text(
              "Roxy",
              style: ShagafFontStyles.whitesemiBold12,
            )
          ],
        ),
      ),
    );
  }
}
