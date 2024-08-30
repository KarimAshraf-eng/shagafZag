import 'package:shagaf_zag/Core/Barrel/imports.dart';

class AnimatedIndicator extends StatelessWidget {
  final int currentIndex;
  final List rooms;
  final pageController = PageController();
   AnimatedIndicator({super.key, required this.currentIndex, required this.rooms,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 500),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60.h,
        child: AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: rooms.length,
          onDotClicked: (index) => pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut),
          effect: WormEffect(
              activeDotColor: ShagafColors.secondaryColor,
              dotColor: ShagafColors.secondaryColor.withOpacity(0.5),
              dotHeight: 10.h,
              dotWidth: 10.h),
        ),
      ),
    );
  }
}
