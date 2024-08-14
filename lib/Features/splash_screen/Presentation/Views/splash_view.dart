import 'package:shagaf_zag/Core/Barrel/imports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigatToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              backGroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              logo,
              scale: 6.r,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouters.onBordingView);
      },
    );
  }
}
