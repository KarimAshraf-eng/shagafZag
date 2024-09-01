import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/core/common/splasher.dart';

class RoomWidget extends StatelessWidget {
  final RoomsModel model;
  const RoomWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          SizedBox(
            width: 343.w,
            height: 187.h,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 343.w,
                        height: 138.h,
                        child: Image.asset(
                          model.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          width: 51.w,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:
                                ShagafColors.secondaryColor.withOpacity(0.52),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(stare),
                              5.horizontalSpace,
                              Text(
                                "4.7",
                                style: ShagafFontStyles.whitesemiBold12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
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
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  height: 48.h,
                  width: 343.w,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      model.name,
                      style: ShagafFontStyles.blackMedium16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Splasher(
                raduis: 12,
                child: Container(),
                onTap: () {
                  GoRouter.of(context).push(AppRouters.roomDetailsView,extra: model);
                }),
          ),
          // Splasher(child: child, onTap: onTap)
        ],
      ),
    );
  }
}
