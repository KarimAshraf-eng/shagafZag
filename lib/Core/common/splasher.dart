import 'package:flutter/material.dart';

class Splasher extends StatelessWidget {
  final Widget child;
  final Color color;
  final double? width;
  final double? height;
  final void Function() onTap;
  const Splasher({
    super.key,
    required this.child,
    this.color = Colors.transparent,
    this.width,
    this.height,
    required this.onTap,
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
          splashColor: Colors.white24,
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
