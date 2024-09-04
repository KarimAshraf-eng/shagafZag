import 'package:flutter/material.dart';
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
          automaticallyImplyLeading: false,
          title:
              Center(child: BookTapBar(selected: selectedIndex, onTap: onTap)),
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
