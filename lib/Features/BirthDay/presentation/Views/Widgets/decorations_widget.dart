import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DecorationsWidget extends StatelessWidget {
  const DecorationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Decoration",
            style: ShagafFontStyles.darkGreyMedium20,
          ),
          5.verticalSpace,
          const DescriptionWidget(
            title:
                "2 helium balloons, a happy birthday ribbon, and two balloons",
            image: decoration1,
            price: 450,
            space1: 5,
            space2: 2,
            style: 2,
          ),
          const DescriptionWidget(
              title: "Without helium balloons", image: decoration2, price: 350,
              style: 2,
              ),
        ],
      ),
    );
  }
}
