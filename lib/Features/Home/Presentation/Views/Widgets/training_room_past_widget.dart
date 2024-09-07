import 'package:shagaf_zag/Core/Barrel/imports.dart';

class TrainingRoomPastWidget extends StatelessWidget {
  const TrainingRoomPastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4)
            )
          ]
        ),
        width: 355.w,
        height: 248.h,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Training Room",
                style: ShagafFontStyles.blackSemiBold16,
              ),
               SizedBox(
                height: 15.h,
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
              SizedBox(
                width: 327.w,
                height: 18.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booking Status",
                      style: ShagafFontStyles.blackNormal14,
                    ),
                    Text(
                      "Paid",
                      style: ShagafFontStyles.redMedium14,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}