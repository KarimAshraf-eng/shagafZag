import 'package:shagaf_zag/Core/Barrel/imports.dart';

class ListViewSnacks extends StatelessWidget {
  const ListViewSnacks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return DrinksWidget(model: snacksList[index],);
      },
      itemCount: snacksList.length,
    );
  }
}
