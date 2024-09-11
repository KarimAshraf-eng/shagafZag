import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int salary = 0;
  int counter = 0;

  int get getCounter => counter;

  int get getSalar => salary;

  void addProductPrice(int price) {
    salary += price;
    notifyListeners();
  }

  void removeProductPrice(int price) {
    salary -= price;
    notifyListeners();
  }

  void cleanCart() {
    salary = 0;
    notifyListeners();
  }
}
