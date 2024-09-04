import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomBody extends StatelessWidget {
  const RoomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
      itemBuilder: (context, index) => RoomWidget(
        model: rooms[index],
      ),
      itemCount: rooms.length,
    );
  }
}
