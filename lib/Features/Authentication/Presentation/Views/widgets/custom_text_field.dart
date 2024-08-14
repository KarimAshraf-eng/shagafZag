import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String icon;
  const CustomTextField(
      {super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          isDense: true,
          contentPadding: const EdgeInsets.only(left: 5),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 5,bottom: 5),
            child: SvgPicture.asset(
              icon,
              width: 20.w,
              height: 20.h,
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 0,
            minHeight: 40.h,
          ),
          hintText: hintText,
          hintStyle: ShagafFontStyles.faint10,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1.5, color: ShagafColors.secondaryColor),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
