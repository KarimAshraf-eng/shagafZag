import 'package:shagaf_zag/core/Barrel/imports.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      contentPadding: const EdgeInsets.all(18),
      content: SizedBox(
        width: 313.w,
        height: 215.29.h,
        child: SizedBox(
          width: 262.14.w,
          height: 167.29.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
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
                  Text(
                    "30% off  10 booking (up to EGP 150)",
                    style: ShagafFontStyles.darkCyan14,
                  ),
                ],
              ),
              SizedBox(
                width: 149.w,
                height: 33.h,
                child: Image.asset(
                  frame,
                ),
              ),
              CustomButton(
                  label: 'Copy',
                  width: 113.w,
                  height: 40.h,
                  color: ShagafColors.secondaryColor,
                  style: ShagafFontStyles.whiteNormal16,
                  onTap: () {
                    GoRouter.of(context).pop();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
