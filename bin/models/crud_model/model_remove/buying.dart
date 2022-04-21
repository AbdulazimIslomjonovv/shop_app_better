import 'dart:io';

import '../../arxiv/arxivDataBase.dart';
import '../../data_base/data_base.dart';

class Buying {
  static void buyingFunc({required String txt}) {
    String name = '';
    int count = -1;
    int price = -1;
    String type1 = 'buying';
    String newTxt = '';
    List<String> list = [];
    bool bl = false;
    for (int i = 0; i < txt.length; i++) {
      if (txt[i] == ']') bl = false;
      if (bl) newTxt += txt[i];
      if (txt[i] == '[') bl = true;
    }
    bool bl1 = true;
    list = List.from(newTxt.split(' '));
    for (int i = 0; i < list.length; i++) {
      if (list[i] == 'name') name = list[i + 1];
      if (list[i] == 'count') count = int.parse(list[i + 1]);
      if (list[i] == 'price') price = int.parse(list[i + 1]);
    }
    bool bl2 = true;
    while (bl1) {
      if (name.isEmpty) {
        stdout.write('ener name again: ');
        name = stdin.readLineSync()!;
      } else if (price == 0 || price < 0) {
        stdout.write('enter price again: ');
        price = int.parse(stdin.readLineSync()!);
      } else if (count == 0 || count < 0 || bl2) {
        stdout.write('enter count again: ');
        count = int.parse(stdin.readLineSync()!);
        if (name.isNotEmpty) {
          for (int i = 0; i < dataBase.length; i++) {
            if (dataBase[i].name == name) {
              if (dataBase[i].count < count) bl2 = true;
              else bl2 = false;
            }
          }
        } else bl2 = true;
      } else if (bl2) {

      } else {
        bl1 = false;
      }
    }
    bl1 = true;
    while (bl1) {
      for (int i = 0; i < dataBase.length; i++) {
        if (dataBase[i].name == name && dataBase[i].count >= count) {
          dataBase[i].count -= count;
          arxivDataBase.add(ArxivDataBase(
            name1: dataBase[i].name,
            category1: dataBase[i].category,
            price1: dataBase[i].price,
            count1: count,
            ustigaQoyilganPul1: dataBase[i].ustigaQoyilganPul,
            createdTime1: dataBase[i].createdTime,
            type1: type1,
            sotilganVaqti1: DateTime.now(),
            sotilganPuli1: price,
            like1: dataBase[i].like,
          ));
          bl1 = false;
        }
      }
    }
  }
}
