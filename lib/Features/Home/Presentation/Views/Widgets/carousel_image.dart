import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CarouselImage extends StatelessWidget {
  final String item;
  const CarouselImage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 310.h,
          width: double.infinity,
          child: Image.asset(
            item,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        Positioned(
          bottom: 70,
          left: 20,
          child: Text(
            "Delightful open air",
            style: ShagafFontStyles.whiteSemiBold20,
          ),
        ),
        Positioned(
          right: 20,
          bottom: 70,
          child: Container(
            width: 51.w,
            height: 22.h,
            decoration: BoxDecoration(
                color: ShagafColors.secondaryColor.withOpacity(0.52),
                borderRadius: BorderRadius.circular(30)),
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
          left: 20,
          bottom: 120,
          child: Container(
            width: 96.w,
            height: 27.h,
            decoration: BoxDecoration(
                color: ShagafColors.secondaryColor,
                borderRadius: BorderRadius.circular(30)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(location),
                    5.horizontalSpace,
                    Text("Location",style: ShagafFontStyles.whiteMedium12,)
                  ],
                ),
          ),
        )
      ],
    );
  }
}
