import 'package:shagaf_zag/Core/Barrel/imports.dart';


class Advertisement extends StatelessWidget {
  const Advertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: Text("Advertisement",style: ShagafFontStyles.darkGreyMedium20),
        ),
        20.verticalSpace,
        const ListViewAdvertisement(),
        20.verticalSpace,
        const ListViewBookingType(),
        20.verticalSpace,
        
      ],
    );
  }
}