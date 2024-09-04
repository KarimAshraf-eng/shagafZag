import 'package:flutter/material.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';
import 'package:shagaf_zag/Features/Home/Presentation/Views/Widgets/book_tap_bar.dart';

class BookView extends StatefulWidget {
  const BookView({super.key});

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100.0,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: deprecated_member_use
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      notification,
                      // ignore: deprecated_member_use
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Booking History",
                    style: ShagafFontStyles.blackMedium16,
                  ),
                  // ignore: deprecated_member_use
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: SvgPicture.asset(
                      upBar,
                      // ignore: deprecated_member_use
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: BookTapBar(selected: selectedIndex, onTap: onTap),
                ),
              ),
            ],
          ),
        ),
        body: selectedIndex == 0
            ? const Center(
                child: Text("Karim ashraf 0"),
              )
            : const Center(
                child: Text("Karim ashraf 1"),
              ));
  }
}
