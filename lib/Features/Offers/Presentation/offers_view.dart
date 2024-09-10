import '../../../Core/Barrel/imports.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100.0,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: deprecated_member_use
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    notification,
                    // ignore: deprecated_member_use
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Offers",
                  style: ShagafFontStyles.blackMedium16,
                ),
                // ignore: deprecated_member_use
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: SvgPicture.asset(
                    upBar,
                    // ignore: deprecated_member_use
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const OffersBody(),
    );
  }
}
