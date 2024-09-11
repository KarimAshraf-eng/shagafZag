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
  static const birthDay = "/BirthDayView";
  static const photoSession = "/PhotoSessionView";
  static const contactUsView = "/ContactUsView";
  static const profileView = "/ProfileView";
  static const eventsView = "/EventsView";
  static const eventsDetailsView = "/EventsDetailsView";
  static const memberShipView = "/MemberShipView";
  static const notificationView = "/NotificationView";
  static const orderView = "/OrderView";

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
        builder: (context, state) => const BirthDayView(),
      ),
      GoRoute(
        path: photoSession,
        name: "Photo session",
        builder: (context, state) => const PhotoSessionView(),
      ),
      GoRoute(
        path: memberShipView,
        name: "Membership",
        builder: (context, state) => const MemberShipView(),
      ),
      GoRoute(
        path: contactUsView,
        builder: (context, state) => const ContactUsView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: eventsView,
        builder: (context, state) => const EventsView(),
      ),
      GoRoute(
        path: notificationView,
        builder: (context, state) => const NotificationView(),
      ),
      GoRoute(
        path: orderView,
        builder: (context, state) => const OrderView(),
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
