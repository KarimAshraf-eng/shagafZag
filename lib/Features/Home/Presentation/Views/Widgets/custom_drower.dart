import 'package:shagaf_zag/Core/Barrel/imports.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 73, left: 44),
            child: Image.asset(logo, width: 95.w, height: 159.h),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: ListView(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(profile),
                    title: Text('Profile', style: ShagafFontStyles.blackMedium16),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(english),
                    title: Row(
                      children: [
                        Text('English', style: ShagafFontStyles.blackMedium16),
                        SvgPicture.asset(arrowDown),
                      ],
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(orders),
                    title: Text('Orders', style: ShagafFontStyles.blackMedium16),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(notification, color: ShagafColors.secondaryColor),
                    title: Text('Notification', style: ShagafFontStyles.blackMedium16),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(rating),
                    title: Text('Rating', style: ShagafFontStyles.blackMedium16),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(contact),
                    title: Text('Contact Us', style: ShagafFontStyles.blackMedium16),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
