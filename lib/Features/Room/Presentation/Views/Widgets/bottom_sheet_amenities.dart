import 'package:shagaf_zag/Core/Barrel/imports.dart';

class BottomSheetAmenities extends StatelessWidget {
  const BottomSheetAmenities({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SvgPicture.asset(
                printer,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Printer, Scanner and photocopier",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "printing, photocopier and scanning services",
                    style: ShagafFontStyles.crayolaMedium12,
                  )
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                wifi,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wi-fi",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "free high speed Wifi",
                    style: ShagafFontStyles.crayolaMedium12,
                  )
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                coffee,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Free coffee",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "free coffee and tea provided",
                    style: ShagafFontStyles.crayolaMedium12,
                  )
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                video,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Video Conf",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "video conferencing setup avaliable",
                    style: ShagafFontStyles.crayolaMedium12,
                  )
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                ledScreen,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LED screen",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "LED screen",
                    style: ShagafFontStyles.crayolaMedium12,
                  )
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                peoble,
                width: 30.w,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Meeting room access",
                    style: ShagafFontStyles.crayolaMedium14,
                  ),
                  Text(
                    "free access to meeting rooms",
                    style: ShagafFontStyles.crayolaMedium14,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
