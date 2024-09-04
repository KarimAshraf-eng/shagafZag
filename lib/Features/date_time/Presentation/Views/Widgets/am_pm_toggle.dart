import 'package:shagaf_zag/Core/Barrel/imports.dart';

class AmPmToggle extends StatelessWidget {
  final bool isAM;
  final ValueChanged<bool> onChanged;
  const AmPmToggle({super.key, required this.isAM, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onChanged(true),
            child: Text('AM',
                style: isAM
                    ? ShagafFontStyles.amSelected
                    : ShagafFontStyles.amUnSelected),
          ),
          GestureDetector(
            onTap: () => onChanged(false),
            child: Text('PM',
                style: !isAM
                    ? ShagafFontStyles.amSelected
                    : ShagafFontStyles.amUnSelected),
          ),
        ],
      ),
    );
  }
}
