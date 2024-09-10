import 'package:shagaf_zag/Core/Barrel/imports.dart';

class EventsDetailsCarouselImage extends StatelessWidget {
  final EventsModel model;
  final int itemIndex;
  const EventsDetailsCarouselImage({super.key, required this.model, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 454.h,
      child: Image.asset(
        model.image ,
        fit: BoxFit.cover,
      ),
    );
  }
}
