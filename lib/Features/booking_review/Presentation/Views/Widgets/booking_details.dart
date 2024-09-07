import '../../../../../Core/Barrel/imports.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: 342.w,
        height: 120.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12,top: 5 ,bottom: 5,right: 12),
          child: SizedBox(
            width: 313.w,
            height: 108.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 108.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Booking Details",style: ShagafFontStyles.blackMedium14,),
                        SizedBox(
                          height: 48.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 8.w,
                                height: 48.h,
                                child:const DashedLineWidget(),
                              ),
                              const SizedBox(width: 3,),
                              SizedBox(
                                height:48.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tus, 13 Feb 2024 04:00 PM",
                                      style: ShagafFontStyles.darkGray10,),
                                    Text("Tus, 13 Feb 2024 04:00 PM",
                                      style: ShagafFontStyles.darkGray10,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 16.w,
                                height: 16.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(seatOutline),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 3,),
                              Text("1 Seat",style: ShagafFontStyles.darkGray12,)
                            ],
                          ),
                        )
                      ],
                    )),
                CustomButton(
                    width: 77.w,
                    height: 33.h,
                    raduis: 20,
                    color: ShagafColors.secondaryColor.withOpacity(.33),
                    label: 'Change',
                    style: ShagafFontStyles.mediumRed12,
                    onTap: () {
                      GoRouter.of(context).push(AppRouters.dataAndTimeView);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
