import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
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
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full Name",
              style: ShagafFontStyles.f2f214,
            ),
            10.verticalSpace,
            const CustomTextField(
              hintText: "Maysem Muhammed",
              makeIcon: false,
              bottom: 30,
            ),
            Text(
              "Phone Number",
              style: ShagafFontStyles.f2f214,
            ),
            10.verticalSpace,
            const CustomTextField(
              hintText: "0123456789",
              makeIcon: false,
              bottom: 30,
            ),
            Text(
              "Change Password",
              style: ShagafFontStyles.f2f214,
            ),
            10.verticalSpace,
            const CustomTextField(
              hintText: "Enter your password",
              icon: password,
              makeIcon: true,
              bottom: 30,
            ),
            Text(
              "Confirm Password",
              style: ShagafFontStyles.f2f214,
            ),
            10.verticalSpace,
            const CustomTextField(
              hintText: "Confirm your password",
              icon: password,
              makeIcon: true,
              bottom: 30,
            ),
          ],
        ),
      ),
    );
  }
}
