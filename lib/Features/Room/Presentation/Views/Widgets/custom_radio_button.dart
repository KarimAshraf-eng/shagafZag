import 'package:shagaf_zag/Core/Barrel/imports.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  final String title;
  final int value;
  final int? groupValue;
  final Color outerColor;
  final Color innerColor;
  final double borderWidth;
  final String icon;
  final void Function(int?) onChanged;
  CustomRadioButton(
      {super.key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.outerColor,
      required this.innerColor,
      required this.borderWidth,
      required this.onChanged, required this.icon});

  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          // ignore: deprecated_member_use
          SvgPicture.asset(icon,color: groupValue == value ? outerColor : const Color(0xff6B6B6B),),
          Text(title,style: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: groupValue == value ? outerColor : const Color(0xff6B6B6B),
      fontFamily: 'Comfortaa'),),
        ],
      ),
      leading: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: outerColor, width: borderWidth),
        ),
        child: Center(
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: groupValue == value ? innerColor : Colors.transparent,
            ),
          ),
        ),
      ),
      onTap: () {
        onChanged(value);
      },
    );
  }
}
