import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListViewHotDrinks extends StatelessWidget {
  const ListViewHotDrinks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DrinksWidget(model: hotDrink[index],);
      },
      itemCount: hotDrink.length,
    );
  }
}
