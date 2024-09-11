import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListViewColdDirnks extends StatelessWidget {
  const ListViewColdDirnks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DrinksWidget(model: drink[index],);
      },
      itemCount: drink.length,
    );
  }
}
