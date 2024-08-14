import 'package:go_router/go_router.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/forget_password_view.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/login_view.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/signup_view.dart';
import 'package:shagaf_zag/Features/Authentication/Presentation/Views/verify_view.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/on_bording_view.dart';
import 'package:shagaf_zag/Features/splash_screen/Presentation/Views/splash_view.dart';

abstract class AppRouters {
  static const onBordingView = "/OnBordingview";
  static const loginView = "/LoginView";
  static const signUpView = "/SignUpView";
  static const forgetPasswordView = "/ForgetPasswordView";
  static const verifyView = '/VerifyView';
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
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: verifyView,
        builder: (context, state) => const VerifyView(),
      ),
    ],
  );
}
