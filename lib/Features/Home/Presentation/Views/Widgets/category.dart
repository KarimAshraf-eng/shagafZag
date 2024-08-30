import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/core/common/splasher.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            "Category",
            style: ShagafFontStyles.darkGreyMedium20,
          ),
        ),
        SizedBox(
          height: 380.h,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: (MediaQuery.of(context).size.width - 342.w) / 2,
                child: ClipPath(
                    clipper: Potter(points: [
                      const TopLeftCorner(),
                      const TopRightCorner(),
                      const PointOnRightSide(divider: 1.5),
                      const BottomCenterCorner(radius: Radius.circular(5)),
                      const PointOnLeftSide(divider: 1.5),
                    ], radius: const Radius.circular(10)),
                    child: Splasher(
                      color: ShagafColors.primaryColor.withOpacity(0.65),
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
                          SvgPicture.asset(room)
                        ],
                      ),
                    )),
              ),
              Positioned(
                left: (MediaQuery.of(context).size.width - 342) / 3,
                bottom: 0,
                child: ClipPath(
                    clipper: Potter(points: [
                      const TopLeftCorner(radius: Radius.circular(25)),
                      const PointOnRightSide(divider: 2.5),
                      const BottomRightCorner(),
                      const BottomLeftCorner(),
                    ], radius: const Radius.circular(10)),
                    child: Splasher(
                        onTap: () {},
                        color: ShagafColors.secondaryColor.withOpacity(0.65),
                        width: 163.w,
                        height: 220.h,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Orders",
                                style: ShagafFontStyles.whiteSemiBold18,
                              ),
                              SvgPicture.asset(order)
                            ],
                          ),
                        ))),
              ),
              Positioned(
                right: (MediaQuery.of(context).size.width - 342) / 3,
                bottom: 0,
                child: ClipPath(
                  clipper: Potter(points: [
                    const PointOnLeftSide(divider: 2.5),
                    const TopRightCorner(radius: Radius.circular(25)),
                    const BottomRightCorner(),
                    const BottomLeftCorner(),
                  ], radius: const Radius.circular(10)),
                  child: Splasher(
                      onTap: () {},
                      color: ShagafColors.tertiaryColor.withOpacity(0.65),
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
                              SvgPicture.asset(events)
                            ],
                          ))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
