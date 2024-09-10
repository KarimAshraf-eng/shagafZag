import '../../../../Core/Barrel/imports.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

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
          Row(
            children: [
              Text("200.0 ",
                style: ShagafFontStyles.redBold16,),
              Text("EGP/Person", style: ShagafFontStyles.redMedium14),
            ],
          ),
          CustomButton(
              label: 'Book Now',
              width: 131.w,
              height: 38.h,
              color: ShagafColors.secondaryColor,
              style: ShagafFontStyles.whiteNormal16,
              onTap: () {
                GoRouter.of(context).push(AppRouters.bookingReviewView);
              }),
        ],
      ),
    );
  }
}
