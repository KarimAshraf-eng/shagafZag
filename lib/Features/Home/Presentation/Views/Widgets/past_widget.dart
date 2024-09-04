import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/funny_room_past_widget.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/meeting_room_past_widget.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/training_room_past_widget.dart';

class PastWidget extends StatelessWidget {
  const PastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TrainingRoomPastWidget(),
          MeetingRoomPastWidget(),
          FunnyRoomPastWidget(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
