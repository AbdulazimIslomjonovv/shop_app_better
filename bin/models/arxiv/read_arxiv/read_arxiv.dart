import '../arxivDataBase.dart';

///89

import 'dart:io';

class ReadArxiv {
  static void readFunC({required String txt}) {
    String newTxt = '';
    bool name = false;
    bool price = false;
    bool count = false;
    bool category = false;
    bool time = false;
    bool foyda = false;
    bool bl = false;
    bool like = false;
    bool sp = false;

    for (int i = 0; i < txt.length; i++) {
      if (txt[i] == ']') bl = false;
      if (bl) newTxt += txt[i];
      if (txt[i] == '[') bl = true;
    }
    List<String> newList = List.from(txt.split(' '));
    String ismi = '';
    for (int i = 0; i < newList.length; i++) {
      if (newList[i] == 'read' && newList.length >= i + 2) {
        ismi = newList[i + 1];
      }
    }

    if (newTxt.isEmpty && ismi.isNotEmpty) {
      if (ismi == 'name') name = true;
      if (ismi == 'price') price = true;
      if (ismi == 'count') count = true;
      if (ismi == 'time') time = true;
      if (ismi == 'category') category = true;
      if (ismi == 'foyda') foyda = true;
      if (ismi == 'like') like = true;
      if (ismi == 'sp') sp = true;

      for (int i = 0; i < arxivDataBase.length; i++) {
        if (name) stdout.write(arxivDataBase[i].name + '\t');
        if (price) stdout.write(arxivDataBase[i].price.toString() + '\t');
        if (count) stdout.write(arxivDataBase[i].count.toString() + '\t');
        if (time) stdout.write(arxivDataBase[i].createdTime.toString() + '\t');
        if (foyda)
          stdout.write(arxivDataBase[i].ustigaQoyilganPul.toString() + '\t');
        if (category) stdout.write(arxivDataBase[i].category + '\t');
        if (like) stdout.write(arxivDataBase[i].likes.toString() + '\t');
        if (sp) stdout.write(arxivDataBase[i].sotilganPuli.toString() + '\t');
        if ((name || price || count || time || foyda || category || sp)) {
          print('\n');
        }
      }
      print('--------------------------------------------------');
      return;
    }

    List<String> list = List.from(newTxt.split(' '));

    for (int i = 0; i < list.length; i++) {
      if (list[i] == 'name') name = true;
      if (list[i] == 'price') price = true;
      if (list[i] == 'count') count = true;
      if (list[i] == 'time') time = true;
      if (list[i] == 'category') category = true;
      if (list[i] == 'foyda') foyda = true;
      if (list[i] == 'like') like = true;
      if (list[i] == 'sp') sp = true;
    }

    for (int i = 0; i < arxivDataBase.length; i++) {
      if (name) stdout.write(arxivDataBase[i].name + '\t');
      if (price) stdout.write(arxivDataBase[i].price.toString() + '\t');
      if (count) stdout.write(arxivDataBase[i].count.toString() + '\t');
      if (time) stdout.write(arxivDataBase[i].createdTime.toString() + '\t');
      if (foyda)
        stdout.write(arxivDataBase[i].ustigaQoyilganPul.toString() + '\t');
      if (category) stdout.write(arxivDataBase[i].category + '\t');
      if (like) stdout.write(arxivDataBase[i].likes.toString() + '\t');
      if (sp) stdout.write(arxivDataBase[i].sotilganPuli.toString() + '\t');
      if ((name || price || count || time || foyda || category || sp)) {
        print('\n');
      }
    }
    print('--------------------------------------------------');
    if (!(name || price || count || time || foyda || category || sp)) {
      for (int i = 0; i < arxivDataBase.length; i++) {
        print(arxivDataBase[i]);
      }
    }
  }
}
