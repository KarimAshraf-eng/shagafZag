import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DrinksWidget extends StatefulWidget {
  final DrinksModel model;
  const DrinksWidget({super.key, required this.model});

  @override
  State<DrinksWidget> createState() => _DrinksWidgetState();
}

class _DrinksWidgetState extends State<DrinksWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final salaryProvider = Provider.of<CounterProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60.w,
                      height: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(widget.model.image),
                            fit: BoxFit.fill),
                      ),
                    ),
                    10.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.model.name,
                          style: ShagafFontStyles.blackNormal16,
                        ),
                        10.verticalSpace,
                        Text(
                          widget.model.price.toString(),
                          style: ShagafFontStyles.blackBold12,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    width: 95.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.25),
                            spreadRadius: 0,
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              counter == 0
                                  ? counter = 0
                                  : {
                                      counter--,
                                      salaryProvider.removeProductPrice(
                                          widget.model.price)
                                    };
                            });
                          },
                          child: SizedBox(
                            height: 60.h,
                            child: SvgPicture.asset(minus),
                          ),
                        ),
                        Text(counter.toString()),
                        InkWell(
                          onTap: () {
                            setState(() {
                              counter++;
                              salaryProvider
                                  .addProductPrice(widget.model.price);
                            });
                          },
                          child: SizedBox(
                            height: 60.h,
                            child: SvgPicture.asset(add),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
