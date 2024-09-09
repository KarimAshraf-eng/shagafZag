import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 24,
          ),
        ),
        title: Text(
          "Rooms",
          style: ShagafFontStyles.blackMedium20,
        ),
      ),
      body: const RoomBody(),
    );
  }
}
