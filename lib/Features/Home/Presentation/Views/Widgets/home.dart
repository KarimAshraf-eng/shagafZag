import 'package:shagaf_zag/Core/Barrel/imports.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const CoustomCarouselSlider(),
          const Advertisement(),
          const Category(),
          40.verticalSpace,
        ],
      ),
    );
  }
}
