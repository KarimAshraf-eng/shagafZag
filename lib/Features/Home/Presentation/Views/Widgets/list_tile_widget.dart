import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String icon;
  final String tralling;
  const ListTileWidget({super.key, required this.title, required this.icon, required this.tralling});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        width: 327.w,
        height: 18.h,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  SvgPicture.asset(
                    icon,
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: ShagafFontStyles.blackNormal16,
                  ),
                ],
              ),
            ),
            Text(
              tralling,
              style: ShagafFontStyles.matterhornMedium14,
            )
          ],
        ),
      ),
    );
  }
}
