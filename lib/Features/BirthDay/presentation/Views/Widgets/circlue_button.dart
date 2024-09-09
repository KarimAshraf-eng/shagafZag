import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CirclueButton extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final double sizeImage;
  final Color color;
  final double raduis;
  final VoidCallback onTap;
  final bool visible ;
  final String tag;
  const CirclueButton({
    super.key,
    required this.width,
    required this.height,
    required this.image,
    required this.sizeImage,
    required this.color,
    required this.raduis,
    required this.onTap,
    required this.tag,
    this.visible = true
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: FloatingActionButton(
          heroTag: tag,
          onPressed: onTap,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(raduis)),
          backgroundColor: const Color(0xffd9d9d9),
          child: SvgPicture.asset(
            image,
            width: sizeImage,
          ),
        ),
      ),
    );
  }
}
