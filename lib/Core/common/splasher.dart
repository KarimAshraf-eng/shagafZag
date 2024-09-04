import 'package:flutter/material.dart';

class Splasher extends StatelessWidget {
  final Widget? child;
  final Color color;
  final double? width;
  final double? height;
  final double raduis;
  final Color splashColor;
  final void Function() onTap;
  const Splasher({
    super.key,
    this.child,
    this.color = Colors.transparent,
    this.width,
    this.height,
    this.splashColor = Colors.white38,
    required this.onTap,
    this.raduis = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        color: color,
        width: width,
        height: height,
        child: InkWell(
          borderRadius: BorderRadius.circular(raduis),
          splashColor: splashColor,
          onTap: onTap,
          child: SizedBox(
            width: width,
            height: height,
            child: child,
          ),
        ),
      ),
    );
  }
}
