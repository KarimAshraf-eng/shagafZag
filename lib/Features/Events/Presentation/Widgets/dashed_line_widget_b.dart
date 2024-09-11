import '../../../../Core/Barrel/imports.dart';

class DashedLineWidgetB extends StatelessWidget {
  const DashedLineWidgetB({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(10.w, 268.h),
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



    const startY = 8.5;
    const endY = 263.0;
    // final x = size.width / 2;


    const dashHeight = 2.5;
    const dashSpace = 1.5;
    double y = startY;

    while (y < endY) {
      canvas.drawLine(Offset(5, y), Offset(5, y + dashHeight), paint);
      y += dashHeight + dashSpace;
    }
    canvas.drawCircle(const Offset(5, 10), 5, paint);
    canvas.drawCircle(const Offset(5, 60), 5, paint);
    canvas.drawCircle(const Offset(5, 115), 5, paint);
    canvas.drawCircle(const Offset(5, 170), 5, paint);
    canvas.drawCircle(const Offset(5, 225), 5, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
