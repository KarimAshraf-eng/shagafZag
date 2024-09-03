import 'package:shagaf_zag/Core/Barrel/imports.dart';

class FinishButton extends StatefulWidget {
  const FinishButton({super.key});

  @override
  State<FinishButton> createState() => _FinishButtonState();
}

class _FinishButtonState extends State<FinishButton> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: CustomButton(
        width: 342.w,
        height: 45.h,
        label: click? "Loading": "Finish",
        style: ShagafFontStyles.whiteMedium16,
        color: click? Colors.grey: ShagafColors.primaryColor,
        onTap: () {
          setState(() {
            click = !click;
          });
        },
      ),
    );
  }
}
