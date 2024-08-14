import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/Core/Utils/Constatn/images.dart';
import 'package:shagaf_zag/Core/Utils/app_routers/app_routers.dart';

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
          Center(child: Image.asset(logo))
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
