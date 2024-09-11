import 'package:shagaf_zag/Core/Barrel/imports.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final salaryProvider = Provider.of<CounterProvider>(context);
    return Visibility(
      visible: salaryProvider.salary == 0 ? false : true,
      child: SizedBox(
        width: 342.w,
        height: 60.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: ShagafColors.primaryColor),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Next",
                      style: ShagafFontStyles.whiteMedium14,
                    ),
                    Text(
                      "EGP ${salaryProvider.salary.toString()}",
                      style: ShagafFontStyles.whiteMedium14,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
