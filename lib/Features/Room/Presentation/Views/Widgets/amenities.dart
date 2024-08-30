import 'package:shagaf_zag/Core/Barrel/imports.dart';

class Amenities extends StatelessWidget {
  const Amenities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "Amenities",
                  style: ShagafFontStyles.redSemiBold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          printer,
                          width: 30.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "Printer, Scanner and photocopier",
                          style: ShagafFontStyles.crayolaMedium14,
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        SvgPicture.asset(
                          wifi,
                          width: 30.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "Wi-fi",
                          style: ShagafFontStyles.crayolaMedium14,
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        SvgPicture.asset(
                          coffee,
                          width: 30.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "Free coffee",
                          style: ShagafFontStyles.crayolaMedium14,
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        SvgPicture.asset(
                          video,
                          width: 30.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "Video Conf",
                          style: ShagafFontStyles.crayolaMedium14,
                        )
                      ],
                    ),
                    10.verticalSpace,
                    Row(
                      children: [
                        SvgPicture.asset(
                          ledScreen,
                          width: 30.w,
                        ),
                        10.horizontalSpace,
                        Text(
                          "LED screen",
                          style: ShagafFontStyles.crayolaMedium14,
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
