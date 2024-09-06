import '../../../../../Core/Barrel/imports.dart';

class TrainingRoom extends StatelessWidget {
  const TrainingRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 316.w,
          height: 100.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(trainingRoom),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 119.w,
                height: 47.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Training room",style: ShagafFontStyles.blackSemiBold16,),
                    Text("inside",style:ShagafFontStyles.warmGrey14,),
                  ],
                ),
              ),
              Container(
                width: 35.w,
                height: 35.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(locationTraining),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
