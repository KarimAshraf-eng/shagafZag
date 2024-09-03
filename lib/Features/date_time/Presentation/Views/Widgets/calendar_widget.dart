import 'package:intl/intl.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342.w,
      height: 310.h,
      child: TableCalendar(
        focusedDay: focusedDay,
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        selectedDayPredicate: (day) {
          return isSameDay(selectedDay, day);
        },
        onDaySelected: (selecteDay, focuseDay) {
          setState(() {
            selectedDay = selecteDay;
            focusedDay = focuseDay;
          });
        },
        calendarStyle: const CalendarStyle(
          
          selectedDecoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: ShagafColors.secondaryColor,
            shape: BoxShape.circle,
          ),
          outsideDaysVisible: true,
          outsideTextStyle: TextStyle(color: Colors.grey),
        ),
        headerStyle: HeaderStyle(
          titleTextStyle: ShagafFontStyles.blackMedium20inter,
          formatButtonVisible: false,
          titleCentered: true,
          leftChevronIcon: SvgPicture.asset(calenderArrowleft),
          rightChevronIcon: SvgPicture.asset(calenderArrowRight),
          headerMargin: const EdgeInsets.symmetric(horizontal: 40),
          titleTextFormatter: (date, locale) =>
              DateFormat('MMM, yyy', locale).format(date),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: ShagafFontStyles.blackNormal16inter,
          weekendStyle: ShagafFontStyles.blackNormal16inter,
        ),
        daysOfWeekHeight: 20,
        startingDayOfWeek: StartingDayOfWeek.monday,
        rowHeight: 40,
      ),
    );
  }
}

