import 'package:shagaf_zag/Core/Barrel/imports.dart';

class BookingType extends StatelessWidget {
  const BookingType({super.key, required this.booking});
  final String booking;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 110.w,
        height: 55.h,
        decoration: BoxDecoration(
            color: ShagafColors.secondaryColor.withOpacity(0.90),
            borderRadius: BorderRadius.circular(12)),
            child: Center(child: Text(booking,style: ShagafFontStyles.whiteMidum16,)),
      ),
    );
  }
}
