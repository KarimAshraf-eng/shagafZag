import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Events/Presentation/events_details_view.dart';
import 'package:shagaf_zag/Features/Events/Presentation/events_view.dart';
import 'package:shagaf_zag/Features/Events/data/model/events_model.dart';

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
  static const birthDay = "/BirthDay";
  static const eventsView = "/EventsView";
  static const eventsDetailsView = "/EventsDetailsView";
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
      GoRoute(
      path: birthDay,
      name: "Birthday",
      builder: (context, state) => const BirthDay(),
      ),
      GoRoute(
        path: eventsView,
        builder: (context, state) => const EventsView(),
      ),
      GoRoute(
        path: eventsDetailsView,
        builder: (context, state) => EventsDetailsView(
          model: state.extra as EventsModel,
        ),
      ),
    ],
  );
}
