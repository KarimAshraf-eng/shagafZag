import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CakesWidget extends StatelessWidget {
  const CakesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cakes",
            style: ShagafFontStyles.darkGreyMedium20,
          ),
          5.verticalSpace,
          const DescriptionWidget(title: "From 1 to 5 person", image: cake1, price: 300 ),
          const DescriptionWidget(title: "From 7 to 10 person", image: cake2, price: 500 ),
          const DescriptionWidget(title: "From 11 to 20 person", image: cake3, price: 750 ),
        ],
      ),
    );
  }
}
