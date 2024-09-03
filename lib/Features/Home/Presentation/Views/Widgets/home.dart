import 'package:shagaf_zag/Core/Barrel/imports.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
           HomeCarouselSlider(),
           Advertisement(),
           Category(),
        ],
      ),
    );
  }
}
