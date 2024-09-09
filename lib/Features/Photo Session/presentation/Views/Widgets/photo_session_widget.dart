import 'package:shagaf_zag/Core/Barrel/imports.dart';

class PhotoSessionWidget extends StatelessWidget {
  const PhotoSessionWidget({super.key});

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
          const DescriptionWidget(
            title: "Filming with a video camera outside the rooms",
            space1: 10,
            image: session1,
            price: 500,
            blus: true,
            style: 2,
          ),
          const DescriptionWidget(
            title: "Filming with a video camera in the rooms",
            space1: 10,
            image: session2,
            price: 250,
            blus: true,
            style: 2,
          ),
          const DescriptionWidget(
            title: "Filming with a photo camera. Camera entry fee to the place",
            space1: 0,
            space2: 5,
            image: session3,
            price: 400,
            blus: true,
            style: 2,
          ),
        ],
      ),
    );
  }
}
