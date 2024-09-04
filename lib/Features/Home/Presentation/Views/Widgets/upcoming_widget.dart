import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/clock.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/upcoming_room_viewer.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/watch.dart';
import 'package:shagaf_zag/core/Barrel/imports.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [ 
              SizedBox(
                width: double.maxFinite,
                height: 329.h,
                child: Image.asset(
                  trainingRoom,
                  fit: BoxFit.cover,
                  ),
              ),
              Container(
                width: double.maxFinite,
                height:329.h,
                color: Colors.black.withOpacity(.4),
              ),
              const Column(
                children: [
                  Clock(),
                  SizedBox(height: 20,),
                  Watch()
                ],
              ),
            ],
          ),
          const SizedBox(height: 16,),
          const UpcomingRoomViewer(),
          const SizedBox(height: 50,)
          ]
      ),
    );
  }
}