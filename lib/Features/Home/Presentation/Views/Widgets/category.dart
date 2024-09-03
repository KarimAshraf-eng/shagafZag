import 'package:shagaf_zag/Core/Barrel/imports.dart';


class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            "Category",
            style: ShagafFontStyles.darkGreyMedium20,
          ),
        ),
        SizedBox(
          height: 380.h,
          child: const Stack(
            children: [
               RoomCategory(),
              Positioned(
                bottom: 40,
                left: 32,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   OrdersCategory(),
                   SizedBox(
                      width: 20,
                    ),
                    EventsCategory()
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
