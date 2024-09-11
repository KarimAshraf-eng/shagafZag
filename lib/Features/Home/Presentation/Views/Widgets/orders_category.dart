import 'package:shagaf_zag/Core/Barrel/imports.dart';

class OrdersCategory extends StatelessWidget {
  const OrdersCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Three(),
      child: Container(
        width: 163,
        height: 200,
        decoration: BoxDecoration(
          color: ShagafColors.secondaryColor.withOpacity(0.65),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Splasher(
          onTap: () {
            GoRouter.of(context).push(AppRouters.orderView);
          },
          width: 163.w,
          height: 220.h,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Orders",
                  style: ShagafFontStyles.whiteSemiBold18,
                ),
                Image.asset(order)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
