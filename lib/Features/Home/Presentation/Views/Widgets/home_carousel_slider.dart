import 'package:shagaf_zag/Core/Barrel/imports.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: item.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return CarouselImage(item: item[itemIndex]);
          },
          options: CarouselOptions(
            height: 300.h,
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
              setState(() {
                currentIndex = index;
              });
            }),
          ),
        ),
        Container(
          color: Colors.white38,
          width: double.infinity,
          height: 60.h,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: item.length,
              onDotClicked: (index) => pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut),
              effect: WormEffect(
                activeDotColor: ShagafColors.secondaryColor,
                dotColor: ShagafColors.secondaryColor.withOpacity(0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 220, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset(upBar),
              ),
              IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouters.notificationView);
                },
                icon: SvgPicture.asset(notification),
              ),
            ],
          ),
        )
      ],
    );
  }
}
