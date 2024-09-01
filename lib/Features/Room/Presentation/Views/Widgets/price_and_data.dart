import 'package:shagaf_zag/Core/Barrel/imports.dart';

class PriceAndData extends StatelessWidget {
  const PriceAndData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 15,
            offset: const Offset(39, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const Bottomsheetprice();
                },
              );
            },
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "100.0 ",
                        style: ShagafFontStyles.redBold16,
                      ),
                      TextSpan(
                          text: "EGP/Day", style: ShagafFontStyles.redMedium14)
                    ],
                  ),
                ),
                10.horizontalSpace,
                SvgPicture.asset(arrowDown),
              ],
            ),
          ),
          CustomButton(
              label: 'Select Data',
              width: 131.w,
              height: 38.h,
              color: ShagafColors.secondaryColor,
              style: ShagafFontStyles.whiteNormal16,
              onTap: () {}),
        ],
      ),
    );
  }
}
