import '../../../../Core/Barrel/imports.dart';

class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(left: 24,),
      crossAxisCount: 2 ,
      children: List.generate(offer.length,(index){
        return OffersWidget(model: offer[index]);
      }),
    );
  }
}
