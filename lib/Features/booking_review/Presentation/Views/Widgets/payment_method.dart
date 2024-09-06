import '../../../../../Core/Barrel/imports.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 120.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15,top: 27),
        child: SizedBox(
          width: 267.w,
          height: 66.h,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text("Payment Method",style: ShagafFontStyles.blackMedium14,),
              Text("You will not be debited until your booking is confirmed",
                style: ShagafFontStyles.darkGray10,),
              const SizedBox(height: 12,),
              SizedBox(
                width: 66.w,
                height: 16.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 16.w,
                      height: 16.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ok),),
                      ),
                    ),
                    Text("Add card",style: ShagafFontStyles.darkGray10,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
