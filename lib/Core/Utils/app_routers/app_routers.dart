import 'package:shagaf_zag/Core/Barrel/imports.dart';

abstract class AppRouters {
  static const onBordingView = "/OnBordingview";
  static const loginView = "/LoginView";
  static const signUpView = "/SignUpView";
  static const forgetPasswordView = "/ForgetPasswordView";
  static const verifyView = '/VerifyView';
  static const homeView = '/HomeView';
  static const drawer = '/CustomDrawer';
  static const roomView = '/RoomView';
  static const roomDetailsView = '/RoomDetailsView';
  static const dataAndTimeView = "/DataAndTimeView";
  static const bookingReviewView = "/BookingReviewView";
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
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: drawer,
        builder: (context, state) => const CustomDrawer(),
      ),
      GoRoute(
        path: roomView,
        builder: (context, state) => const RoomView(),
      ),
      GoRoute(
        path: roomDetailsView,
        builder: (context, state) => RoomDetailsView(
          model: state.extra as RoomsModel,
        ),
      ),
      GoRoute(
        path: dataAndTimeView,
        builder: (context, state) => const DataAndTimeView(),
      ),
      GoRoute(
        path: bookingReviewView,
        builder: (context, state) => const BookingReviewView(),
      ),
    ],
  );
}
