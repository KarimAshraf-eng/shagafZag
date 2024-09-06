import '../../../../../Core/Barrel/imports.dart';

class ListViewReview extends StatelessWidget {
  const ListViewReview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Column(
          children: [
            TrainingRoom(),
            BookingDetails(),
            PaymentMethod(),
            DiscountsAvailable(),
            CustomButtonReview(),
          ],
        )
      ],
    );
  }
}
