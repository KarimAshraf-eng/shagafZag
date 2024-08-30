import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomAppbar extends StatelessWidget {
  final RoomsModel model;
  const RoomAppbar({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 57,
      left: 20.5,
      child: SizedBox(
        width: 345.w,
        height: 30.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                size: 24,
              ),
            ),
            Text(
              model.name,
              style: ShagafFontStyles.blackMedium16,
            ),
            Container(
              width: 30.w,
              height: 30.w,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
