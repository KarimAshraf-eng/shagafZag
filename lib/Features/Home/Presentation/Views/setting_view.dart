import 'package:shagaf_zag/Core/Barrel/imports.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
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
              "Setting",
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
          children: [
            ListTileWidget(
              title: "Profile",
              icon: profile,
              nothing: true,
              style: 2,
              heigth: 40,
              margin: 5,
              divider: true,
              onTap: () {
                GoRouter.of(context).push(AppRouters.profileView);
              },
              click: true,
            ),
            const ListTileWidget(
              title: "English",
              icon: english,
              isText: false,
              tralling: bigArrowDown,
              nothing: false,
              style: 2,
              heigth: 40,
              margin: 5,
              divider: true,
            ),
            const ListTileWidget(
              title: "Notification",
              icon: notification,
              nothing: true,
              style: 2,
              heigth: 40,
              margin: 5,
              divider: true,
              iconColor: ShagafColors.secondaryColor,
            ),
            ListTileWidget(
              title: "Contact Us",
              click: true,
              onTap: () {
                GoRouter.of(context).push(AppRouters.contactUsView);
              },
              icon: contactUs,
              nothing: true,
              style: 2,
              heigth: 40,
              margin: 5,
              divider: true,
            ),
            const ListTileWidget(
              title: "About Us",
              icon: aboutUs,
              nothing: true,
              style: 2,
              heigth: 40,
              margin: 5,
              divider: true,
            ),
          ],
        ),
      ),
    );
  }
}
