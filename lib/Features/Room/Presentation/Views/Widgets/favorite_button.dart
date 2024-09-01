import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Core/common/splasher.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onTap;
  const FavoriteButton({super.key, required this.onTap, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Splasher(
      splashColor: Colors.red,
      raduis: 20,
      onTap: () {
        onTap();
      },
      child: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.favorite,
          color: isFavorite ? Colors.red : Colors.grey,
        ),
      ),
    );
  }
}

