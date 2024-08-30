import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DescriptionRoom extends StatelessWidget {
  final RoomsModel model;
  const DescriptionRoom({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.name,
          style: ShagafFontStyles.redSemiBold18,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            width: 100,
            height: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(seat),
                Text(
                  " 30 Seats",
                  style: ShagafFontStyles.matterhornMedium14,
                )
              ],
            ),
          ),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: ShagafFontStyles.darkCharcoalMedium12,
        ),
      ],
    );
  }
}
