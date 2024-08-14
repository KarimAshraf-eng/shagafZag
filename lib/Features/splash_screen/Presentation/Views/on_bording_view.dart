import 'package:flutter/material.dart';
import 'package:shagaf_zag/Core/Utils/Constatn/color.dart';
import 'package:shagaf_zag/Core/Utils/Constatn/styles.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/Widgets/bottom_sheet.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/Widgets/on_bording_design.dart';
import 'package:shagaf_zag/Features/splash_screen/data/onboarding_items.dart';

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
      backgroundColor: firstColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20, left: 330),
            child: TextButton(
              onPressed: () {
                pageController.jumpToPage(controller.items.length - 1);
              },
              child: Text(
                "Skip",
                style: Onbording.secondStyle,
              ),
            ),
          ),
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
