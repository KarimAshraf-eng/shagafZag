import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/login_view.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/on_bording_view.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/splash_view.dart';

abstract class AppRouters {
  static const onBordingView = "/OnBordingview";
  static const loginView = "/LoginView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBordingView,
        builder: (context, state) => const OnBordingView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
