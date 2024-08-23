import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CoustomCarouselSlider extends StatefulWidget {
  const CoustomCarouselSlider({super.key});

  @override
  State<CoustomCarouselSlider> createState() => _CoustomCarouselSliderState();
}

class _CoustomCarouselSliderState extends State<CoustomCarouselSlider> {
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
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(upBar),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(notification),
              ),
            ],
          ),
        )
      ],
    );
  }
}
