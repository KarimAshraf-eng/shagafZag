import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Order/presentation/Views/Widgets/list_view_hot_drinks.dart';
import 'package:shagaf_zag/Features/Order/presentation/Views/Widgets/list_view_snacks.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final salaryProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Orders",
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What’s on your mind?",
                  style: ShagafFontStyles.blackNormal16,
                ),
                25.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selectIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(coldDrinks),
                          ),
                          10.verticalSpace,
                          Text(
                            "Cold Drinks",
                            style: selectIndex == 0
                                ? ShagafFontStyles.mediumRed14400
                                : ShagafFontStyles.blackNormal14,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selectIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(hotDrinks),
                          ),
                          10.verticalSpace,
                          Text(
                            "Hot Drinks",
                            style: selectIndex == 1
                                ? ShagafFontStyles.mediumRed14400
                                : ShagafFontStyles.blackNormal14,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selectIndex = 2;
                        });
                      },
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(snacks),
                          ),
                          10.verticalSpace,
                          Text(
                            "Snacks",
                            style: selectIndex == 2
                                ? ShagafFontStyles.mediumRed14400
                                : ShagafFontStyles.blackNormal14,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: ShagafColors.secondaryColor,
                  endIndent: selectIndex == 0
                      ? 265
                      : selectIndex == 1
                          ? 130
                          : 0,
                  indent: selectIndex == 0
                      ? 0
                      : selectIndex == 1
                          ? 130
                          : 270,
                ),
                20.verticalSpace,
              ],
            ),
          ),
          selectIndex == 0 ?SizedBox(
            height: salaryProvider.salary == 0 ?537.h : 473.h,
            child: const ListViewColdDirnks(),
          ):selectIndex == 1 ?SizedBox(
            height: salaryProvider.salary == 0 ?537.h : 473.h,
            child: const ListViewHotDrinks(),
          ):selectIndex == 2 ?SizedBox(
            height: salaryProvider.salary == 0 ?537.h : 473.h,
            child: const ListViewSnacks(),
          ):Container(),
          const NextButton()
        ],
      ),
    );
  }
}
