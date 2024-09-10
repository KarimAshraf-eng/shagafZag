import 'package:shagaf_zag/Core/Barrel/imports.dart';

class EventsDetailsView extends StatefulWidget {
  final EventsModel model;
  const EventsDetailsView({super.key, required this.model});

  @override
  State<EventsDetailsView> createState() => _EventsDetailsViewState();
}

class _EventsDetailsViewState extends State<EventsDetailsView> {
  int currentIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const CustomBottomSheet(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: event.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return EventsDetailsCarouselImage(
                    model: event[itemIndex], itemIndex: itemIndex,
                  );
                },
                options: CarouselOptions(
                  height: 454.h,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: ((index, reason) {
                    setState(
                          () {
                        currentIndex = index;
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
          AnimatedIndicator(currentIndex: currentIndex, rooms: event),
          const LowerPart(),
          const EventsAppbar(),
          const LocationName()
        ],
      ),
    );
  }
}
