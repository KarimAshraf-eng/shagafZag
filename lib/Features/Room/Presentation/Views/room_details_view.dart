import 'package:shagaf_zag/Core/Barrel/imports.dart';

class RoomDetailsView extends StatefulWidget {
  final RoomsModel model;
  const RoomDetailsView({super.key, required this.model});

  @override
  State<RoomDetailsView> createState() => _RoomDetailsViewState();
}

class _RoomDetailsViewState extends State<RoomDetailsView> {
  int currentIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: rooms.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return RoomDetailsCarouselImage(
                    model: rooms[itemIndex], itemIndex: itemIndex,
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
          AnimatedIndicator(currentIndex: currentIndex, rooms: rooms),
          LowePart(model: widget.model),
          RoomAppbar(model: widget.model),
          const LocationName()
        ],
      ),
    );
  }
}
