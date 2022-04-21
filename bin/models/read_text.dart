///136

import '../statistika/statistika.dart';
import 'arxiv/read_arxiv/read_arxiv.dart';
import 'commands/commands.dart';
import 'crud_model/add.dart';
import 'crud_model/model_remove/buying.dart';
import 'crud_model/models_read/read_only_then.dart';
import 'crud_model/read.dart';
import 'crud_model/remove.dart';
import 'crud_model/update.dart';
import 'data_base/like/like.dart';
import 'sort/sort_model.dart';

List<String> txtReadOnlyThen = ['=', '>=', '<=', '>', '<'];
List<String> txtAdd = ['add'];
List<String> txtRemove = ['remove'];
List<String> txtSort = ['sort'];
List<String> txtRead = ['read'];
List<String> txtLike = ['like'];
List<String> txtUpdate = ['update'];
List<String> txtPin = ['pin'];
List<String> txtReadArxiv = ['readArxiv'];
List<String> txtBuying = ['buy'];
List<String> txtCommand = ['command'];
List<String> txtTop = ['top'];

class ReadText {
  static void readTxt({required String txt}) {
    List<String> txtList = List.from(txt.split(' '));
    ///add---------------------------------------
    for (int i = 0; i < txtAdd.length; i++) {
      if (txtList.contains(txtAdd[i])) {
        Add.addFunc(txt: txt);
        return;
      }
    }

    ///************************************************

    ///remove------------------------------------------
    String name = '';
    List<String> list = List.from(txt.split(' '));
    for (int i = 0; i < list.length; i++) {
      if (list[i].toString().toLowerCase() == 'remove') {
        name = list[i - 2];
      }
    }

    for (int i = 0; i < txtRemove.length; i++) {
      if (txt.contains(txtRemove[i])) {
        Remove.remove(name: name);
        return;
      }
    }

    ///************************************************

    ///sorting--------------------------------------
    String type = '';
    List<String> listType = List.from(txt.split(' '));
    for (int i = 0; i < listType.length; i++) {
      if (listType[i] == 'sort') {
        type = listType[i + 2];
        break;
      }
    }
    for (int i = 0; i < txtSort.length; i++) {
      if (txt.contains(txtSort[i])) {
        Sort.sorting(type: type);
        return;
      }
    }

    ///*************************************************

    ///update-------------------------------------------
    for (int i = 0; i < txtUpdate.length; i++) {
      if (txt.contains(txtUpdate[i])) {
        Update.all(txt: txt);
        return;
      }
    }

    ///****************************************************

    ///read-----------------------------------------------
    bool bl1 = false;
    bool bl2 = false;
    for (int i = 0; i < txtRead.length; i++) {
      if (txt.contains(txtRead[i])) bl2 = true;
    }
    for (int j = 0; j < txtReadOnlyThen.length; j++) {
      if (txt.contains(txtReadOnlyThen[j])) bl1 = true;
    }
    for (int i = 0; i < txtReadArxiv.length; i++) {
      if (txt.contains(txtReadArxiv[i])) {
        ReadArxiv.readFunC(txt: txt);
        return;
      }
    }
    if (bl1 && bl2) {
      ReadOnlyThen.readOnlyThenFunc(txt: txt);
      return;
    } else if (bl2 && !bl1) {
      Read.readFunc(txt: txt);
      return;
    }

    ///******************************************************

    ///like------------------------------------------------
    for (int i = 0; i < txtLike.length; i++) {
      if (txt.contains(txtLike[i])) {
        Like.likeFunc(txt: txt);
        return;
      }
    }

    ///******************************************************

    ///Commands-----------------------------------------------
    for (int i = 0; i < txtPin.length; i++) {
      if (txt.contains(txtCommand[i])) {
        Command.all(txt: txt);
        return;
      }
    }

    ///******************************************************

    ///readArxiv----------------------------------------------
    for (int i = 0; i < txtBuying.length; i++) {
      if (txtList.contains(txtBuying[i])) {
        Buying.buyingFunc(txt: txt);
        return;
      }
    }

    ///******************************************************

    ///top---------------------------------------------------
    for (int i = 0; i < txtTop.length; i++) {
      if (txtList.contains(txtTop[i])) {
        Statistic.all(txt: txt);
        return;
      }
    }

    ///******************************************************
  }
}
