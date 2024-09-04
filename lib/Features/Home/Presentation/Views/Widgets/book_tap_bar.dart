import 'package:shagaf_zag/Core/common/splasher.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class BookTapBar extends StatelessWidget {
  final int selected;
  final ValueChanged<int> onTap;

  const BookTapBar({
    super.key,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 340,
        height: 40,
        color: const Color(0xffE7E3E3),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: double.infinity,
              width: selected == 1 ? 161 : 178,
              decoration: BoxDecoration(
                color: selected == 1 ? Colors.transparent : ShagafColors.secondaryColor,
                borderRadius: selected == 1
                    ? const BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      )
                    : const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
              ),
              child: Splasher(
                width: double.infinity,
                onTap: () => onTap(0),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "Past",
                      key: ValueKey<int>(selected),
                      style: selected == 1
                          ? ShagafFontStyles.blackNormal14
                          : ShagafFontStyles.whiteMedium14500,
                    ),
                  ),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: selected == 0 ? 161 : 178,
              decoration: BoxDecoration(
                color: selected == 0 ? Colors.transparent : ShagafColors.secondaryColor,
                borderRadius: selected == 0
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
              ),
              child: Splasher(
                onTap: () => onTap(1),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      "Upcoming",
                      key: ValueKey<int>(selected),
                      style: selected == 0
                          ? ShagafFontStyles.blackNormal14
                          : ShagafFontStyles.whiteMedium14500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
