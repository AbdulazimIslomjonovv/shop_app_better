import 'dart:io';

import '../arxiv/arxivDataBase.dart';
import '../data_base/data_base.dart';
import '../data_base/like/like.dart';

class Add {
  static void addFunc({required String txt}) async {
    String type1 = 'adding';
    String name = '';
    String category = '';
    int price = -1;
    int count = -1;
    int ustigaQoyilganPul = -1;

    String newTxt = '';
    bool bl = false;
    List<String> list = [];
    for (int i = 0; i < txt.length; i++) {
      if (txt[i] == ']') bl = false;
      if (bl) newTxt += txt[i];
      if (txt[i] == '[') bl = true;
    }
    list = List.from(newTxt.split(' '));
    print(list);
    for (int i = 0; i < list.length; i++) {
      if (list[i] == 'name') {
        name = list[i + 1];
      }
      if (list[i] == 'category') {
        category = list[i + 1];
      }
      if (list[i] == 'price') {
        price = int.parse(list[i + 1]);
      }
      if (list[i] == 'count') {
        count = int.parse(list[i + 1]);
      }
      if (list[i] == 'foyda') {
        ustigaQoyilganPul = int.parse(list[i + 1]);
      }
    }
    print('name: $name');
    print('category: $category');
    print('price: $price');
    print('count: $count');
    print('foyda: $ustigaQoyilganPul');
    bool bl1 = true;
    List<String> listTxt = [];
    while (bl1) {
      try {
        for (int i = 0; i < dataBase.length; i++) {
          if (dataBase[i].name == name) throw 'name';
        }
        DataBase dataBase1 = DataBase(
            name1: name,
            category1: category,
            price1: price,
            count1: count,
            ustigaQoyilganPul1: ustigaQoyilganPul,
            createdTime1: DateTime.now());
        dataBase.add(dataBase1);
        arxivDataBase.add(ArxivDataBase(
          name1: name,
          category1: category,
          price1: price,
          count1: count,
          ustigaQoyilganPul1: ustigaQoyilganPul,
          createdTime1: DateTime.now(),
          type1: type1,
        ));
        bl1 = false;
      } catch (e) {
        if (e == 'name') {
          stdout.write('enter name again: ');
          name = stdin.readLineSync()!;
        }
        if (e == 'category') {
          stdout.write('enter category again: ');
          category = stdin.readLineSync()!;
        }
        if (e == 'price') {
          stdout.write('enter price again: ');
          price = int.parse(stdin.readLineSync()!);
        }
        if (e == 'count') {
          stdout.write('enter count again: ');
          count = int.parse(stdin.readLineSync()!);
        }
        if (e == 'ustigaQoyilganPul') {
          stdout.write('enter foyda again: ');
          ustigaQoyilganPul = int.parse(stdin.readLineSync()!);
        }
      }
    }
  }
}
