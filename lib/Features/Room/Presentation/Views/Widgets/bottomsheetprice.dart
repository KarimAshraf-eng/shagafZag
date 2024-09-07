import 'package:shagaf_zag/Core/Barrel/imports.dart';

class Bottomsheetprice extends StatefulWidget {
  const Bottomsheetprice({super.key});

  @override
  State<Bottomsheetprice> createState() => _BottomsheetpriceState();
}

class _BottomsheetpriceState extends State<Bottomsheetprice> {
  int? selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 24,bottom: 12),
              child: Text(
                "Select your plan",
                style: ShagafFontStyles.b1kMedium16,
              ),
            ),
            CustomRadioButton(
              title: " 60.0 EGP/Hour",
              icon: clock,
              value: 1,
              groupValue: selectedValue,
              outerColor: ShagafColors.secondaryColor,
              innerColor: Colors.white,
              borderWidth: selectedValue == 1?6:1.5,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            CustomRadioButton(
              title: " 500.0 EGP/Hour",
              icon: calender,
              value: 2,
              groupValue: selectedValue,
              outerColor: ShagafColors.secondaryColor,
              innerColor: Colors.white,
              borderWidth: selectedValue == 2?6:1.5,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            CustomRadioButton(
              title: " 8,000.0 EGP/Hour",
              icon: calendarDate,
              value: 3,
              groupValue: selectedValue,
              outerColor: ShagafColors.secondaryColor,
              innerColor: Colors.white,
              borderWidth: selectedValue == 3?6:1.5,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,top: 30),
              child: SizedBox(
                width: 342.w,
                height: 38.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: ShagafColors.backgroundColor,
                  ),
                  child: InkWell(
                    onTap: (){
                    },
                      child: Text('Select Data',style: ShagafFontStyles.whiteNormal17,)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
