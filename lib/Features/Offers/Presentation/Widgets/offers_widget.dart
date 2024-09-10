
import '../../../../Core/Barrel/imports.dart';


class OffersWidget extends StatelessWidget {
  final OffersModel model;
  const OffersWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 163.w,
          height: 176.h,
          child: Column(
            children: [
              ClipRRect(
                borderRadius:  const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: SizedBox(
                  width: 163.w,
                  height: 100.h,
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 163.w,
                height: 76.h,
                padding:  const EdgeInsets.only(left: 8,top: 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset:  const Offset(0, 4),
                    ),
                  ],
                  borderRadius:  const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.name,style: ShagafFontStyles.blackNormal14,),
                    Padding(
                      padding:  const EdgeInsets.only(left: 2,top: 2,),
                      child:  SizedBox(
                        width: 143.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 115.w,
                              child:
                              Text(
                                model.description,
                                style: ShagafFontStyles.darkGray11,
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                              height: 24.h,
                              child: Image.asset(
                                arrow,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Splasher(
              raduis: 12,
              onTap: () {
                showCustomDialog(context);
              }),
        ),
      ],
    );
  }



  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return
          const AlertDialogWidget();
      },
    );
  }
}
