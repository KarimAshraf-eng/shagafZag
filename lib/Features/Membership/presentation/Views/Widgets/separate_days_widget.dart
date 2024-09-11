import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Membership/presentation/Views/Widgets/dashed_lined_widget_c.dart';

class SeparateDaysWidget extends StatelessWidget {
  const SeparateDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CustomCheckBox(),
              Text(
                "15 Separate days",
                style: ShagafFontStyles.darkGreyMedium20,
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 342.w,
                height: 180.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Row(
                    children: [
                      const DashedLineWidgetC(
                        boint2: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 300.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("750 LE for one person",style: ShagafFontStyles.blackNormal12,),
                              40.verticalSpace,
                              Text("One invitation for your friends  spend a day in Shagaf included drink ",style: ShagafFontStyles.blackNormal12),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
