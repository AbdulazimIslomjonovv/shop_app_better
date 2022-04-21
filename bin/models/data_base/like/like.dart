///40

import '../data_base.dart';

List<String> likes = ['like', 'love'];

class Like {
  static void likeFunc({required String txt}) {
    List<String> list = List.from(txt.split(' '));
    if (txt.contains('[')) {
      bool bl = false;
      String newTxt = '';
      for (int i = 0; i < txt.length; i++) {
        if (txt[i] == ']') bl = false;
        if (bl) newTxt += txt[i];
        if (txt[i] == '[') bl = true;
      }
      List<String> listName = List.from(newTxt.split(' '));
      for (int i = 0; i < listName.length; i++) {
        for (int j = 0; j < dataBase.length; j++) {
          if (dataBase[j].name == listName[i]) {
            dataBase[j].like = true;
          }
        }
      }
    } else {
      String txtName = '';
      for (int i = 0; i < list.length; i++) {
        if (list[i] == 'like' || list[i] == 'love') {
          txtName = list[i + 1];
        }
      }
      for (int i = 0; i < dataBase.length; i++) {
        if (dataBase[i].name == txtName) {
          dataBase[i].like = true;
        }
      }
    }
  }
}
