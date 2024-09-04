import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/date_time/Presentation/Views/Widgets/am_pm_toggle.dart';

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
          Text("From:", style: ShagafFontStyles.blackMedium15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TimeColumn(
                  selectedValue: selectedHourFrom,
                  values: hours,
                  onChanged: (value) {
                    setState(() {
                      selectedHourFrom = value;
                    });
                  }),
              const Text(':', style: TextStyle(fontSize: 25)),
              TimeColumn(
                  selectedValue: selectedMinuteFrom,
                  values: minutes,
                  onChanged: (value) {
                    setState(() {
                      selectedMinuteFrom = value;
                    });
                  }),
              AmPmToggle(isAM: isAMFrom, onChanged: (value) {
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
              TimeColumn(
                  selectedValue: selectedHourTo,
                  values: hours,
                  onChanged: (value) {
                    setState(() {
                      selectedHourTo = value;
                    });
                  }),
              const Text(':', style: TextStyle(fontSize: 25)),
              TimeColumn(
                  selectedValue: selectedMinuteTo,
                  values: minutes,
                  onChanged: (value) {
                    setState(() {
                      selectedMinuteTo = value;
                    });
                  }),
              AmPmToggle(isAM: isAMTo, onChanged:(value) {
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
}
