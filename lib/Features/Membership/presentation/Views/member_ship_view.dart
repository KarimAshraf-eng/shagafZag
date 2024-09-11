import 'package:shagaf_zag/Core/Barrel/imports.dart';

class MemberShipView extends StatefulWidget {
  const MemberShipView({super.key});

  @override
  State<MemberShipView> createState() => _MemberShipViewState();
}

class _MemberShipViewState extends State<MemberShipView> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Membership",
          style: ShagafFontStyles.blackMedium20,
        ),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          const AMonthWidget(),
          20.verticalSpace,
          const SeparateDaysWidget()
        ],
      )
    );
  }
}
