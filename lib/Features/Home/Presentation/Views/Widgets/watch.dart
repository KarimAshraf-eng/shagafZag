import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shagaf_zag/core/theme/fonts.dart';

class Watch extends StatefulWidget {
  const Watch({super.key});

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(
            () {});
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    return RichText(text: 
    TextSpan(
      text: fixedInt(dateTime.hour),
      style: ShagafFontStyles.redBold32,
      children: [
        TextSpan( 
          text: ":${fixedInt(dateTime.minute)}:${fixedInt(dateTime.second)}",
          style: ShagafFontStyles.whiteBold32
        )
      ]
    ),
    );
  }
}

String fixedInt(int n){
  return n<10? "0$n": n.toString();
}