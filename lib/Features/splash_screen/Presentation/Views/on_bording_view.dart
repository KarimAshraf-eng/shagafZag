import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/core/theme/color.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/Widgets/bottom_sheet.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/Widgets/on_bording_design.dart';
import 'package:shagaf_zag/Features/splash_screen/data/onboarding_items.dart';
import 'package:shagaf_zag/core/utils/app_routers/app_routers.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({super.key});

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView> {
  final pageController = PageController();
  final controller = OnboardingItems();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShagafColors.backgroundColor,
      body: Column(
        children: [
          40.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              20.horizontalSpace,
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouters.loginView);
                },
                child: Text(
                  "Skip",
                  style: ShagafFontStyles.whiteNormal17,
                ),
              ),
            ],
          ),
          20.verticalSpace,
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) => setState(
                  () => isLastPage = controller.items.length - 1 == index),
              controller: pageController,
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return OnBordingDesign(
                  controller: controller.items[index],
                );
              },
            ),
          ),
          BottomSheetView(
        isLastPage: isLastPage,
        pageController: pageController,
        controller: controller,
      ),
        ],
      ),
    );
  }
}
