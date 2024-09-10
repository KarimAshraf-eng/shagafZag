import 'package:shagaf_zag/Features/Events/Presentation/Widgets/dashed_line_widget.dart';
import '../../../../Core/Barrel/imports.dart';

class LowerPart extends StatelessWidget {
  const LowerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 495.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 24,),
            child: Text(
              "Details",
              style: ShagafFontStyles.redSemiBold16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42,top: 15),
            child: SizedBox(
              width: 324.w,
              height: 271.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      DashedLineWidgetB(),
                    ],
                  ),
                  SizedBox(
                    width: 307.w,
                    height: 271.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("We will learn how to make ceramics and use them after that",
                        style: ShagafFontStyles.darkGreyMedium12,),
                        Text("The workshop will last for one day and last 3 hours. We will learn about it",
                        style: ShagafFontStyles.darkGreyMedium12,),
                        Text("We will learn about the types of clay to differentiate the final result of the product",
                        style: ShagafFontStyles.darkGreyMedium12,),
                        Text("How do I make shapes with clay without them cracking?",
                        style: ShagafFontStyles.darkGreyMedium12,),
                        Text("We will burn the shapes we made and find out how they burn so that you can use them after that and live with you",
                        style: ShagafFontStyles.darkGreyMedium12,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
