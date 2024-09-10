import 'package:shagaf_zag/Core/Barrel/imports.dart';

class EventsAppbar extends StatefulWidget {
  const EventsAppbar({super.key,});

  @override
  State<EventsAppbar> createState() => _EventsAppbarState();
}

class _EventsAppbarState extends State<EventsAppbar> {
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
              "Events",
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
