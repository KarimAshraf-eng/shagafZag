import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/booking_type.dart';

class ListViewBookingType extends StatelessWidget {
  const ListViewBookingType({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: bookingType.length,
        itemBuilder: (context, index) {
          return BookingType(booking: bookingType[index],);
        },
      ),
    );
  }
}
