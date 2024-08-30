import 'package:shagaf_zag/Core/Barrel/imports.dart';


class LowePart extends StatelessWidget {
  final RoomsModel model;
  const LowePart({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 495.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DescriptionRoom(model: model),
              const Amenities(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      doubleArrowDown,
                      width: 20,
                    ),
                  )
                ],
              ),
              const Location(),
              const PriceAndData()
            ],
          ),
        ),
      ),
    );
  }
}
