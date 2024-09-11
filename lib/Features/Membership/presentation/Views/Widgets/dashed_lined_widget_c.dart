import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DashedLineWidgetC extends StatelessWidget {
  final bool boint2;
  const DashedLineWidgetC({super.key, this.boint2 = false});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(10.w, 165.h),
      painter: DashedLinePainter(boint2: boint2),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final bool boint2;

  DashedLinePainter({super.repaint, required this.boint2});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ShagafColors.secondaryColor
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    const startY = 8.5;
    const endY = 132.0;
    // final x = size.width / 2;

    const dashHeight = 2.5;
    const dashSpace = 1.5;
    double y = startY;

    while (y < endY) {
      canvas.drawLine(Offset(5, y), Offset(5, y + dashHeight), paint);
      y += dashHeight + dashSpace;
    }
    canvas.drawCircle(const Offset(5, 5), 4, paint);
    canvas.drawCircle(const Offset(5, 65), 4, paint);
    if(boint2 == false)
    {
      canvas.drawCircle(const Offset(5, 132), 4, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
