import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/Core/Utils/Constatn/color.dart';
import 'package:shagaf_zag/Core/Utils/app_routers/app_routers.dart';
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
    return Container(
      width: 120.w,
      height: 180.h,
      color: firstColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
            controller: pageController,
            count: controller.items.length,
            onDotClicked: (index) => pageController.animateToPage(index,
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeIn),
            effect: WormEffect(
              activeDotColor: secondColor,
              dotColor: secondColor.withOpacity(0.5),
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
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
              },
              backgroundColor: firstColor.withOpacity(0.10),
              elevation: 1,
              splashColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(50), // Set the border radius
              ),
              child: Icon(Boxicons.bx_right_arrow_alt,color: Colors.white,size: 40,),
            ),
          ),
        ],
      ),
    );
  }
}
