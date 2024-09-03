import 'package:shagaf_zag/Core/Barrel/imports.dart';

class One extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path();
    path.lineTo(0, size.height - 75 - radius);
    path.quadraticBezierTo(0, size.height - 80, 10, size.height - 75);
    path.lineTo(173, size.height - 2);
    // path.quadraticBezierTo(168, size.height, 171, size.height - 2);
    path.lineTo(size.width - 10, size.height - 54 - radius);
    path.quadraticBezierTo(
        size.width, size.height - 80, size.width, size.height - 93);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Two extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - radius);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width, 0, size.width - radius, 10);
    path.lineTo(10, size.height - 130);
    path.quadraticBezierTo(0, size.height - 126, 0, size.height - 110);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Three extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20.0;
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - radius);
    path.lineTo(size.width, 90);
    path.quadraticBezierTo(size.width, 75, size.width - 10, 70);
    path.lineTo(20, 10);
    path.quadraticBezierTo(0, 0, 0, 20);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
