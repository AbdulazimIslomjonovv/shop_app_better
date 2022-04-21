import '../data_base/data_base.dart';
class Sort {
  static void sorting({required String type}) async {
    DataBase.sortType =  type;
    dataBase.sort();
  }
}