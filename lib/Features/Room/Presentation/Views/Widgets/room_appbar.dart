import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomAppbar extends StatefulWidget {
  final RoomsModel model;
  const RoomAppbar({super.key, required this.model});

  @override
  State<RoomAppbar> createState() => _RoomAppbarState();
}

class _RoomAppbarState extends State<RoomAppbar> {
  bool isFavorite = false;
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
                color: Colors.black,
                size: 24,
              ),
            ),
            Text(
              widget.model.name,
              style: ShagafFontStyles.blackMedium16,
            ),
            FavoriteButton(
              isFavorite: isFavorite,
              onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            })
          ],
        ),
      ),
    );
  }
}
