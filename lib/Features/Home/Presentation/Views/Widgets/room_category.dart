import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomCategory extends StatelessWidget {
  const RoomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 32,
      child: ClipPath(
        clipper: One(),
        child: Container(
          width: 342,
          height: 200,
          decoration: BoxDecoration(
            color: ShagafColors.primaryColor.withOpacity(0.65),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Splasher(
            width: 342.w,
            height: 220.h,
            onTap: () {
              GoRouter.of(context).push(AppRouters.roomView);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    "Rooms",
                    style: ShagafFontStyles.whiteSemiBold24,
                  ),
                ),
                Image.asset(room)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
