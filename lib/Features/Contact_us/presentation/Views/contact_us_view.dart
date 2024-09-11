import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: ShagafFontStyles.blackMedium20,
        ),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
          children: [
            const ListTileWidget(
              title: "015557992",
              icon: phone,
              divider: true,
              margin: 10,
              style: 2,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
            ),
            ListTileWidget(
              title: "Shaghaf Co-working space ",
              icon: facebook,
              divider: true,
              margin: 10,
              style: 3,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
              textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'Comfortaa',
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 1
                  ),
            ),
            const ListTileWidget(
              title: "shagaf@gmail.com",
              icon: gmail,
              divider: true,
              margin: 10,
              style: 2,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
            ),
            const ListTileWidget(
              title: "shagaf@gmail.com",
              icon: instagram,
              divider: true,
              margin: 10,
              style: 2,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
            ),
            const ListTileWidget(
              title: "shagaf@gmail.com",
              icon: snapchat,
              divider: true,
              margin: 10,
              style: 2,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
            ),
            const ListTileWidget(
              title: "shagaf@gmail.com",
              icon: tiktok,
              divider: true,
              margin: 10,
              style: 2,
              heigth: 25,
              iconHeight: 24,
              bottom: 20,
            ),
          ],
        ),
      ),
    );
  }
}
