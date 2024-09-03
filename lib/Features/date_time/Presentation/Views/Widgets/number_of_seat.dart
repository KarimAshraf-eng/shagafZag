import 'package:shagaf_zag/Core/Barrel/imports.dart';

class NumberOfSeat extends StatefulWidget {
  const NumberOfSeat({super.key});

  @override
  State<NumberOfSeat> createState() => _NumberOfSeatState();
}

class _NumberOfSeatState extends State<NumberOfSeat> {
  int numberOfSeats = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(0, 1)
            )
          ]
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            profile,
            // ignore: deprecated_member_use
            color: Colors.black54,
          ),
          title: Text(
            "Number of seats",
            style: ShagafFontStyles.blackNormal16,
          ),
          trailing: SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      numberOfSeats != 0 ? numberOfSeats-- : numberOfSeats = 0;
                    });
                  },
                  icon: SvgPicture.asset(buttonMinus),
                ),
                Text(numberOfSeats.toString()),
                IconButton(
                  onPressed: () {
                    setState(() {
                      numberOfSeats !=1000? numberOfSeats ++ : numberOfSeats = 999;
                    });
                  },
                  icon: SvgPicture.asset(buttonAdd),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
