import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        activeColor: ShagafColors.secondaryColor,
        side: const BorderSide(color: ShagafColors.tertiaryColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        value: ischecked,
        onChanged: (bool? value) {
          setState(() {
            ischecked = value ?? false;
          });
        },
      ),
    );
  }
}
