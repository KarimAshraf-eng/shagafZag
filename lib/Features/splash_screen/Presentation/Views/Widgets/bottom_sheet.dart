import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/core/theme/color.dart';
import 'package:shagaf_zag/core/utils/app_routers/app_routers.dart';
import 'package:shagaf_zag/Features/splash_screen/data/onboarding_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BottomSheetView extends StatelessWidget {
  final PageController pageController;
  final bool isLastPage;
  final OnboardingItems controller;
  const BottomSheetView({
    super.key,
    required this.isLastPage,
    required this.pageController,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 180.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
            controller: pageController,
            count: controller.items.length,
            onDotClicked: (index) => pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut),
            effect: WormEffect(
              activeDotColor: ShagafColors.secondaryColor,
              dotColor: ShagafColors.secondaryColor.withOpacity(0.5),
            ),
          ),
          30.verticalSpace,
          SizedBox(
            height: 70.h,
            width: 70.w,
            child: FloatingActionButton(
              onPressed: () {
                isLastPage
                    ? GoRouter.of(context).pushReplacement(AppRouters.loginView)
                    : pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut);
              },
              backgroundColor: ShagafColors.primaryColor,
              elevation: 1,
              splashColor: Colors.white10,
              shape: const CircleBorder(),
              child: const Icon(Boxicons.bx_right_arrow_alt,color: Colors.white,size: 40,),
            ),
          ),
        ],
      ),
    );
  }
}
