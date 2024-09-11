import 'package:shagaf_zag/Core/Barrel/imports.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        width: 360.w,
        height: 82.h,
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black))),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(event3),
            ),
            0.horizontalSpace,
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ceramics workshop Event",
                    style: ShagafFontStyles.blackMedium20,
                  ),
                  10.verticalSpace,
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "today",
                      style: ShagafFontStyles.blackNormal16,
                    ),
                    TextSpan(
                        text: "  12:05 pm",
                        style: ShagafFontStyles.blackNormal12)
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
