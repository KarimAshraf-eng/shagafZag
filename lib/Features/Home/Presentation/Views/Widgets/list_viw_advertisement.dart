import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListViewAdvertisement extends StatelessWidget {
  const ListViewAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 108.h,
        width: 243.w,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 243.w,
                height: 108.h,
                child: Image.asset(advertisementImage)
              ),
            );
          },
        ));
  }
}
