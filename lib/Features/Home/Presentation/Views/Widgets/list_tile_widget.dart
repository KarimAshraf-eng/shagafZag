import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String icon;
  final String tralling;
  final bool isText;
  final bool nothing;
  final bool divider;
  final bool click;
  final int style;
  final double width, heigth, iconWidth, margin;
  final double? iconHeight;
  final Color color;
  final Color? iconColor;
  final double dividerHeight;
  final double bottom;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  const ListTileWidget(
      {super.key,
      required this.title,
      required this.icon,
      this.tralling = "",
      this.style = 1,
      this.width = 327,
      this.heigth = 18,
      this.iconWidth = 20,
      this.margin = 20,
      this.isText = true,
      this.click = false,
      this.divider = false,
      this.iconColor,
      this.dividerHeight = 5,
      this.bottom = 0,
      this.iconHeight,
      this.textStyle,
      this.onTap,
      this.color = Colors.white,
      this.nothing = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        children: [
          Container(
            width: width.w,
            height: heigth.h,
            color: color,
            child: click == true
                ? Splasher(
                    onTap: onTap != null ? onTap! : () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              SvgPicture.asset(icon,
                                  width: iconWidth,
                                  // ignore: deprecated_member_use
                                  color: iconColor),
                              SizedBox(width: margin),
                              Text(
                                title,
                                style: style == 2
                                    ? ShagafFontStyles.blackSemiBold16
                                    : style == 1? ShagafFontStyles.blackNormal16
                                    :textStyle
                              ),
                            ],
                          ),
                        ),
                        if (nothing == false)
                          if (isText == true)
                            Text(
                              tralling,
                              style: ShagafFontStyles.matterhornMedium14,
                            ),
                        if (isText == false)
                          SvgPicture.asset(
                            tralling,
                            width: 20,
                          ),
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(icon,
                                width: iconWidth,
                                height: iconHeight,
                                // ignore: deprecated_member_use
                                color: iconColor),
                            SizedBox(width: margin),
                            Text(
                              title,
                              style: style == 2
                                  ? ShagafFontStyles.blackSemiBold16
                                    : style == 1? ShagafFontStyles.blackNormal16
                                    :textStyle
                            ),
                          ],
                        ),
                      ),
                      if (nothing == false)
                        if (isText == true)
                          Text(
                            tralling,
                            style: ShagafFontStyles.matterhornMedium14,
                          ),
                      if (isText == false)
                        SvgPicture.asset(
                          tralling,
                          width: 20,
                        ),
                    ],
                  ),
          ),
          if (divider == true)
            SizedBox(
              height: dividerHeight,
              width: width.w,
              child: const Divider(),
            ),
          bottom.verticalSpace
        ],
      ),
    );
  }
}
