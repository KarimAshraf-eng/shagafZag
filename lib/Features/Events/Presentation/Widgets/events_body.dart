import '../../../../Core/Barrel/imports.dart';

class EventsBody extends StatelessWidget {
  const EventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(left: 24),
      crossAxisCount: 2 ,
      children: List.generate(event.length,(index){
        return EventsWidget(model: event[index]);
      }),
    );
  }
}
