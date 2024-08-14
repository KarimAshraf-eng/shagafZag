import 'package:shagaf_zag/Core/Barrel/imports.dart';

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
