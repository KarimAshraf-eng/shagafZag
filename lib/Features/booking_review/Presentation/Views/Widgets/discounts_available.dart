import '../../../../../Core/Barrel/imports.dart';

class DiscountsAvailable extends StatelessWidget {
  const DiscountsAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8
        ),
        width: 342.w,
        height: 230.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 318.w,
              height: 33.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discounts Available",style: ShagafFontStyles.blackMedium14,),
                    CustomButton(
                        width: 99.w,
                        height: 33.h,
                        color: const Color(0xFFFFCDD2),
                        label: 'Add promo',
                        style: ShagafFontStyles.mediumRed12,
                        onTap: () {}
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 12
              ),
              child:
              Container(
                width: 292.14.w,
                height: 42.h,
                // padding: EdgeInsets.only(left: 8 ,top: 18,right: 8,bottom: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey),
                ),
                child: SizedBox(
                  width: 261.14.w,
                  height: 26.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 22.29.w,
                        height: 17.14.h,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(discounts),
                              ),
                        ),
                      ),
                      Text("30% off  10 booking (up to EGP 150)",
                        style: ShagafFontStyles.grayDark10,),
                      const SizedBox(width: 5,),
                      CustomButton(
                          width: 63.w,
                          height: 26.h,
                          color: const Color(0xFFFFCDD2),
                          label: 'Apply',
                          style: ShagafFontStyles.mediumRed12,
                          onTap: () {}
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text("Booking Charges",style: ShagafFontStyles.blackMedium14,),
            ),

            const Divider(),

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SizedBox(
                width: 318.w,
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("x1 Day EGP 100.0 x 1 Seat",style:ShagafFontStyles.darkGray14,),
                    Text("EGP 100.0",style:ShagafFontStyles.darkGray14,),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SizedBox(
                width: 318.w,
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Due",style:ShagafFontStyles.mediumRed14,),

                    Text("EGP 100.0",style:ShagafFontStyles.mediumRed14,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
