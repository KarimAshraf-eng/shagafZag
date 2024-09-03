import 'package:shagaf_zag/Core/Barrel/imports.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  int selectedHourFrom = 7;
  int selectedMinuteFrom = 1;
  int selectedHourTo = 9;
  int selectedMinuteTo = 30;
  bool isAMFrom = true;
  bool isAMTo = true;

  List<int> hours = List.generate(12, (index) => index + 1);
  List<int> minutes = List.generate(60, (index) => index);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("From:", style:ShagafFontStyles.blackMedium15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildTimeColumn(selectedHourFrom, hours, (value) {
                setState(() {
                  selectedHourFrom = value;
                });
              }),
              const Text(':', style: TextStyle(fontSize: 25)),
              buildTimeColumn(selectedMinuteFrom, minutes, (value) {
                setState(() {
                  selectedMinuteFrom = value;
                });
              }),
              buildAmPmToggle(isAMFrom, (value) {
                setState(() {
                  isAMFrom = value;
                });
              }),
            ],
          ),
          Text("To:", style: ShagafFontStyles.blackMedium15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildTimeColumn(selectedHourTo, hours, (value) {
                setState(() {
                  selectedHourTo = value;
                });
              }),
              const Text(':', style: TextStyle(fontSize: 25)),
              buildTimeColumn(selectedMinuteTo, minutes, (value) {
                setState(() {
                  selectedMinuteTo = value;
                });
              }),
              buildAmPmToggle(isAMTo, (value) {
                setState(() {
                  isAMTo = value;
                });
              }),
            ],
          ),
        ],
      ),
    );
  }

Widget buildTimeColumn(int selectedValue, List<int> values, ValueChanged<int> onChanged) {
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
                fontWeight: FontWeight.w500
              ),
            ),
          );
        },
        childCount: values.length,
      ),
    ),
  );
}



  Widget buildAmPmToggle(bool isAM, ValueChanged<bool> onChanged) {
    return SizedBox(
      height: 40,
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onChanged(true),
            child: Text(
              'AM',
              style: isAM? ShagafFontStyles.amSelected:ShagafFontStyles.amUnSelected
            ),
          ),
          GestureDetector(
            onTap: () => onChanged(false),
            child: Text(
              'PM',
              style: !isAM? ShagafFontStyles.amSelected:ShagafFontStyles.amUnSelected
            ),
          ),
        ],
      ),
    );
  }
}
