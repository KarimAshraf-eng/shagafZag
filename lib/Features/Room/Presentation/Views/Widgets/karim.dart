import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  int? _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildCustomRadio(
          title: 'Option 1',
          value: 1,
          groupValue: _selectedValue,
          outerColor: Color(0xFFEF5350), // اللون الأحمر للأطار الخارجي
          innerColor: Color(0xFFFFFFFF), // اللون الأبيض للدائرة الداخلية
          borderWidth: 4.0, // سمك الأطار الخارجي
        ),
        buildCustomRadio(
          title: 'Option 2',
          value: 2,
          groupValue: _selectedValue,
          outerColor: Color(0xFF42A5F5), // اللون الأزرق للأطار الخارجي
          innerColor: Color(0xFFAB47BC), // اللون البنفسجي للدائرة الداخلية
          borderWidth: 4.0, // سمك الأطار الخارجي
        ),
        buildCustomRadio(
          title: 'Option 3',
          value: 3,
          groupValue: _selectedValue,
          outerColor: Color(0xFFFFC107), // اللون الأصفر للأطار الخارجي
          innerColor: Color(0xFFFFFFFF), // اللون الأبيض للدائرة الداخلية
          borderWidth: 4.0, // سمك الأطار الخارجي
        ),
      ],
    );
  }

  Widget buildCustomRadio({
    required String title,
    required int value,
    required int? groupValue,
    required Color outerColor,
    required Color innerColor,
    required double borderWidth,
  }) {
    return ListTile(
      title: Text(title),
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
        setState(() {
          _selectedValue = value;
        });
      },
    );
  }
}
