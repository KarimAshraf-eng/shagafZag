import 'package:shagaf_zag/Core/Barrel/imports.dart';

class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShagafColors.backgroundReview,
      appBar: AppBar(
        backgroundColor: ShagafColors.backgroundReview,
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text(
            "Booking Review",
            style: ShagafFontStyles.blackMedium16,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
            size: 24,
          ),
        ),

      ),
      body: const ListViewReview(),
    );
  }
}
