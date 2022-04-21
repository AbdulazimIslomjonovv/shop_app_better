///95

import '../data_base/data_base.dart';

class Update {
  static void all({required String txt}) {
    List<String> list2 = List.from(txt.split(' '));
    String newTxt = '';
    bool COUNT = false;
    int? newCount;
    bool PRICE = false;
    int? newPrice;
    bool CATEGORY = false;
    String? newCategory;
    bool USTIGAQOYILGANPUL = false;
    int? newUstigaQoyilganPul;
    String ism = '';
    bool bl = false;

    for (int i = 0; i < list2.length; i++) {
      if (list2[i].toString().toLowerCase() == 'update') {
        ism = list2[i + 1];
      }
    }

    for (int i = 0; i < txt.length; i++) {
      if (txt[i] == ']') bl = false;
      if (bl) newTxt += txt[i];
      if (txt[i] == '[') bl = true;
    }

    List newList = List.from(newTxt.split(' '));
    for (int i = 0; i < newList.length; i++) {
      if (newList[i].toString().toLowerCase() == 'count') {
        COUNT = true;
        newCount = int.parse(newList[i + 1]);
      }
      if (newList[i].toString().toLowerCase() == 'price') {
        PRICE = true;
        newPrice = int.parse(newList[i + 1]);
      }
      if (newList[i].toString().toLowerCase() == 'category') {
        CATEGORY = true;
        newCategory = newList[i + 1];
      }
      if (newList[i].toString().toLowerCase() ==
          'USTIGAQOYILGANPUL'.toLowerCase()) {
        USTIGAQOYILGANPUL = true;
        newUstigaQoyilganPul = int.parse(newList[i + 1]);
      }
    }

    if (COUNT) Update.updateCount(name: ism, newCount: newCount!);
    if (PRICE) Update.updatePrice(name: ism, newPrice: newPrice!);
    if (CATEGORY) Update.updateCategory(name: ism, newCategory: newCategory!);
    if (USTIGAQOYILGANPUL)
      Update.updateUstigaQoyilganPul(
          name: ism, newUstigaQoyilganPul: newUstigaQoyilganPul!);
  }

  static void updateCount({required String name, required int newCount}) {
    for (int i = 0; i < dataBase.length; i++) {
      if (dataBase[i].name == name) {
        dataBase[i].count += newCount;
        break;
      }
    }
  }

  static void updatePrice({required String name, required int newPrice}) {
    for (int i = 0; i < dataBase.length; i++) {
      if (dataBase[i].name == name) {
        dataBase[i].price = newPrice;
      }
    }
  }

  static void updateCategory(
      {required String name, required String newCategory}) {
    for (int i = 0; i < dataBase.length; i++) {
      if (dataBase[i].name == name) {
        dataBase[i].category = newCategory;
      }
    }
  }

  static void updateUstigaQoyilganPul(
      {required String name, required int newUstigaQoyilganPul}) {
    for (int i = 0; i < dataBase.length; i++) {
      if (dataBase[i].name == name) {
        dataBase[i].ustigaQoyilganPul = newUstigaQoyilganPul;
      }
    }
  }
}
