///41

import 'dart:io';

import '../arxiv/arxivDataBase.dart';
import '../data_base/data_base.dart';

class Remove {
  static void remove({required String name}) {
    String type11 = 'removing';
    int sotilganNarx = -1;
    while (sotilganNarx <= 0) {
      try {
        stdout.write('enter bought price: ');
        sotilganNarx = int.parse(stdin.readLineSync()!);
      } catch (e) {}
    }
    for (int i = 0; i < dataBase.length; i++) {
      if (dataBase[i].name == name) {
        arxivDataBase.add(ArxivDataBase(
            name1: dataBase[i].name,
            category1: dataBase[i].category,
            price1: dataBase[i].price,
            count1: dataBase[i].count,
            ustigaQoyilganPul1: dataBase[i].ustigaQoyilganPul,
            createdTime1: dataBase[i].createdTime,
            sotilganPuli1: sotilganNarx,
          sotilganVaqti1: DateTime.now(),
          type1: type11,
          like1: dataBase[i].like!,
        ));
        // print(dataBase[i].name);
        // print(dataBase[i].category);
        // print(dataBase[i].price);
        // print(dataBase[i].count);
        // print(dataBase[i].ustigaQoyilganPul);
        // print(dataBase[i].createdTime);
        // print(sotilganNarx);
        dataBase.remove(dataBase[i]);
        break;
      }
    }
  }
}
