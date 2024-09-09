import 'package:shagaf_zag/Core/Barrel/imports.dart';

class DescriptionWidget extends StatefulWidget {
  final String title;
  final String image;
  final int price;
  final int space1;
  final int space2;
  final bool blus;
  final int style;

  const DescriptionWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      this.space1 = 18,
      this.space2 = 10,
      this.blus = false,
      this.style = 1
      });

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final salaryProvider = Provider.of<CounterProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 342.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: counter == 0 ? Colors.white : const Color(0xfff9bbae),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 1),
            )
          ],
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Row(
              children: [
                10.horizontalSpace,
                Image.asset(widget.image),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.space1.verticalSpace,
                    SizedBox(
                      width: 180,
                      child: Text(
                        widget.title,
                        style: widget.style == 2 ?
                        ShagafFontStyles.blackNormal12:ShagafFontStyles.blackNormal14,
                      ),
                    ),
                    widget.space2.verticalSpace,
                    Text(
                      "${widget.price.toString()} LE",
                      style: ShagafFontStyles.blackBold12,
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 20,
              child: Row(
                children: [
                  CirclueButton(
                    visible: widget.blus == true
                        ? false
                        : counter == 0
                            ? false
                            : true,
                    tag: "${widget.title}minus",
                    width: 30,
                    height: 30,
                    image: minus,
                    sizeImage: 18,
                    color: const Color(0xffd9d9d9),
                    raduis: 40,
                    onTap: () {
                      setState(() {
                        if (counter == 0) {
                          counter = 0;
                        } else {
                          counter--;
                          salaryProvider.removeProductPrice(widget.price);
                        }
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Visibility(
                      visible: widget.blus == true
                          ? false
                          : counter == 0
                              ? false
                              : true,
                      child: Text(
                        counter.toString(),
                      ),
                    ),
                  ),
                  CirclueButton(
                    visible: widget.blus == true
                        ? counter == 1
                            ? false
                            : true
                        : true,
                    tag: "${widget.title}add",
                    width: 30,
                    height: 30,
                    image: add,
                    sizeImage: 18,
                    color: const Color(0xffd9d9d9),
                    raduis: 40,
                    onTap: () {
                      setState(() {
                        counter++;
                        salaryProvider.addProductPrice(widget.price);
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
