import '../../../../../Core/Barrel/imports.dart';

class CustomButtonReview extends StatelessWidget {
  const CustomButtonReview({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomButton(
              width: 342.w,
              height: 51.h,
              color: ShagafColors.primaryColor,
              label: "Book",
              onTap: (){},),
            const SizedBox(height: 12,),
            CustomButton(
              width: 342.w,
              height: 51.h,
              color: Colors.white,
              label: "Cancellation Policy",
              style: ShagafFontStyles.darkGrayishBlue16,
              onTap: (){
                GoRouter.of(context).push(AppRouters.dataAndTimeView);
              },),
          ],
        ),
      );
  }
}
