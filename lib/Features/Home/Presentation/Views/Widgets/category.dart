import 'package:shagaf_zag/Core/Barrel/imports.dart';


class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 10),
          child: Text(
            "Category",
            style: ShagafFontStyles.darkGreyMedium20,
          ),
        ),
        SizedBox(
          height: 350.h,
          child: Stack(
            children: [
              Positioned(
                left: 20,
                child: ClipPath(
                  clipper: Potter(points: [
                    const TopLeftCorner(),
                    const TopRightCorner(),
                    const PointOnRightSide(divider: 1.5),
                    const BottomCenterCorner(),
                    const PointOnLeftSide(divider: 1.5),
                  ], radius: const Radius.circular(10)),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: (){},
                    child: Container(
                      color: ShagafColors.primaryColor.withOpacity(0.65),
                      width: 342.w,
                      height: 200.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 60),
                             child: Text("Room",style: ShagafFontStyles.whiteSemiBold24,),
                           ),
                          SvgPicture.asset(room)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 0,
                child: ClipPath(
                  clipper: Potter(points: [
                    const TopLeftCorner(radius: Radius.circular(30)),
                    const PointOnRightSide(divider: 2.5),
                    const BottomRightCorner(),
                    const BottomLeftCorner(),
                  ], radius: const Radius.circular(10)),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      color: ShagafColors.secondaryColor.withOpacity(0.65),
                      width: 163.w,
                      height: 200.h,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50,left: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Orders",style: ShagafFontStyles.whiteSemiBold18,),
                            SvgPicture.asset(order)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 0,
                child: ClipPath(
                  clipper: Potter(points: [
                    const PointOnLeftSide(divider: 2.5),
                    const TopRightCorner(radius: Radius.circular(30)),
                    const BottomRightCorner(),
                    const BottomLeftCorner(),
                  ], radius: const Radius.circular(10)),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Container(
                      color: ShagafColors.tertiaryColor.withOpacity(0.65),
                      width: 163.w,
                      height: 200.h,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50,right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                             Text("Events",style: ShagafFontStyles.whiteSemiBold18,),
                              SvgPicture.asset(events)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
