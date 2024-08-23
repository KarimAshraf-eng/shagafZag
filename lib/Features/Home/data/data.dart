import 'package:shagaf_zag/Core/Barrel/imports.dart';

final List<String> iconList = [
  "assets/icons/home.svg",
  "assets/icons/book.svg",
  "assets/icons/offers.svg",
  "assets/icons/more.svg",
];

final List<String> labels = [
  'Home',
  'Book',
  'Offers',
  'More',
];

final List<Widget> pages = [
  const Home(),
  const Center(child: Text('Book')),
  const Center(child: Text('Offers')),
  const Center(child: Text('More')),
];

final List<String> item = [
  'assets/images/home_background.png',
  'assets/images/home_background.png',
  'assets/images/home_background.png',
  'assets/images/home_background.png',
  'assets/images/home_background.png',
  'assets/images/home_background.png',
];

final List<String> bookingType = [
  "Membership",
  "Birthday",
  "Photo session",
];
