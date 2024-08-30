import 'package:flutter/material.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class PriceAndData extends StatelessWidget {
  const PriceAndData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 15,
            offset: const Offset(39, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "100.0 ",
                  style: ShagafFontStyles.redBold16,
                ),
                TextSpan(text: "EGP/Day", style: ShagafFontStyles.redMedium14)
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(arrowDown),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              width: 131.w,
              height: 38.h,
              decoration: BoxDecoration(
                color: ShagafColors.secondaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Select Data",
                style: ShagafFontStyles.whiteNormal16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
