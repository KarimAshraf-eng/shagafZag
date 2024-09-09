
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class Hint extends StatelessWidget {
  const Hint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 62.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 6,
              backgroundColor: ShagafColors.secondaryColor,
            ),
            SizedBox(width: 7.w),
            Expanded(
              child: Text(
                "You can buy them from any where else without any cost or services",style: ShagafFontStyles.blackNormal12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
