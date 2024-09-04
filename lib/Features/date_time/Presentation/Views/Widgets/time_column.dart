import 'package:flutter/material.dart';

class TimeColumn extends StatelessWidget {
  final int selectedValue;
  final List<int> values;
  final ValueChanged<int> onChanged;
  const TimeColumn({super.key, required this.selectedValue, required this.values, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 60,
      child: ListWheelScrollView.useDelegate(
        controller: FixedExtentScrollController(
          initialItem: values.indexOf(selectedValue),
        ),
        itemExtent: 30,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: (index) {
          onChanged(values[index]);
        },
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            final bool isSelected = values[index] == selectedValue;
            return Center(
              child: Text(
                values[index].toString().padLeft(2, '0'),
                style: TextStyle(
                    fontSize: isSelected ? 20 : 15,
                    color: isSelected ? Colors.black : Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            );
          },
          childCount: values.length,
        ),
      ),
    );
  }
}
