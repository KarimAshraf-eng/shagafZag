import '../../../../../Core/Barrel/imports.dart';

class DashedLineWidget extends StatelessWidget {
  const DashedLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
       size: Size(8.w, 47.5.h),
      painter: DashedLinePainter(),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = ShagafColors.secondaryColor
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;



    const startY = 7.5;
    const endY = 39.0;
    // final x = size.width / 2;


    const dashHeight = 2.5;
    const dashSpace = 1.5;
    double y = startY;

    while (y < endY) {
      canvas.drawLine(Offset(5, y), Offset(5, y + dashHeight), paint);
      y += dashHeight + dashSpace;
    }
    canvas.drawCircle(const Offset(5, 6), 5, paint);
    canvas.drawCircle(const Offset(5, 40), 5, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
