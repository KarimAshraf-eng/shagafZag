import 'package:shagaf_zag/Core/Barrel/imports.dart';

class BirthDayView extends StatelessWidget {
  const BirthDayView({super.key});

  @override
  Widget build(BuildContext context) {
    final salaryProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Birthday",
          style: ShagafFontStyles.blackMedium20,
        ),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
            salaryProvider.salary = 0;
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Hint(),
            const CakesWidget(),
            const DecorationsWidget(),
            10.verticalSpace,
            Opacity(
              opacity: salaryProvider.salary == 0 ? 0 : 1,
              child: SizedBox(
                width: 342.w,
                height: 40.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: ShagafColors.primaryColor),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Loading",
                          style: ShagafFontStyles.whiteMedium14,
                        ),
                        Text(
                          "EGP ${salaryProvider.salary.toString()}",
                          style: ShagafFontStyles.whiteMedium14,
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
