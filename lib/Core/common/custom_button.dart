import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function() onTap;
  final double height;
  final double width;
  final Color color;
  final TextStyle style;
  final double raduis;
  CustomButton(
      {super.key,
      required this.label,
      required this.onTap,
      this.height = 40,
      this.width = double.maxFinite,
      this.color = ShagafColors.primaryColor,
      this.raduis = 0,
      TextStyle? style})
      : style = style ?? ShagafFontStyles.whiteMedium14;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
          color: color,
            borderRadius: BorderRadius.circular(raduis)
          ),
          height: height.h,
          width: width.w,
          child: InkWell(
            onTap: onTap,
            child: SizedBox(
              child: Center(
                  child: Text(
                label,
                style: style,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
