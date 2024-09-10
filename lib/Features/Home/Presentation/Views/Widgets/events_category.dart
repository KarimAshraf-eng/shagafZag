import 'package:shagaf_zag/Core/Barrel/imports.dart';

class EventsCategory extends StatelessWidget {
  const EventsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Two(),
      child: Container(
        width: 163,
        height: 200,
        decoration: BoxDecoration(
          color: ShagafColors.tertiaryColor.withOpacity(0.65),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Splasher(
          onTap: () {
            GoRouter.of(context).push(AppRouters.eventsView);
          },
          width: 163.w,
          height: 220.h,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Events",
                  style: ShagafFontStyles.whiteSemiBold18,
                ),
                Image.asset(events)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
