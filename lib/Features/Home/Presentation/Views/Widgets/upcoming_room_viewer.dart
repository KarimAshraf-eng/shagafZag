import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/core/Barrel/imports.dart';
import 'package:shagaf_zag/core/common/splasher.dart';

class UpcomingRoomViewer extends StatelessWidget {
  const UpcomingRoomViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4))
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Training Room",
              style: ShagafFontStyles.blackSemiBold16,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Cancellation Deadline: 11/2/2024",
              style: ShagafFontStyles.redMedium14,
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTileWidget(
              title: 'Date',
              icon: date,
              tralling: '17/2/2024',
            ),
            const ListTileWidget(
              title: 'Time',
              icon: clock,
              tralling: '09:00 Am',
            ),
            const ListTileWidget(
              title: 'Seats',
              icon: seat,
              tralling: 'x1',
            ),
            const ListTileWidget(
              title: 'Deposit',
              icon: deposit,
              tralling: '50.00 LE',
            ),
            const ListTileWidget(
              title: 'The rest of the money',
              icon: deposit,
              tralling: '30.00 LE',
            ),
            const ListTileWidget(
              title: 'Coffee',
              icon: coffe1,
              tralling: '20.20 LE',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 50.h,
                  width: 164.w,
                  decoration: BoxDecoration(
                      color: ShagafColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Splasher(
                    onTap: () {},
                    raduis: 10,
                    child: Center(child: Text('Extra Time',style: ShagafFontStyles.whiteMedium14,)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50.h,
                  width: 164.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ShagafColors.secondaryColor,
                      )),
                  child: Splasher(
                    onTap: () {},
                    splashColor: ShagafColors.secondaryColor.withOpacity(.2),
                    raduis: 10,
                    child: Center(child: Text('Add Items',style: ShagafFontStyles.redMedium14,)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
