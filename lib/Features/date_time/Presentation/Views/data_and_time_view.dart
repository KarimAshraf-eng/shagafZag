import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DataAndTimeView extends StatelessWidget {
  const DataAndTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const FinishButton(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Select date and time",
          style: ShagafFontStyles.blackMedium16,
        ),
        leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black,
                size: 24,
              ),
            ),
      ),
      body: const Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalendarWidget(),
              TimePickerWidget(),
            ],
          ),
          NumberOfSeat()
        ],
      )
    );
  }
}