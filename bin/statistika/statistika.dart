import '../models/arxiv/arxivDataBase.dart';

List<ArxivDataBase> dataTopBuying = [];
List<String> listTopBuying = ['buying', 'removing'];
List<ArxivDataBase> rangTopBuying = [];
int i1 = 0;
///-----------------------------------
List<ArxivDataBase> dataTopAdding = [];
List<ArxivDataBase> rangTopAdding = [];
List<String> listTopAdding = ['adding'];

class Statistic {

  static void all({required String txt}) {
    for (; i1 < arxivDataBase.length; i1++) {
      if (arxivDataBase[i1].type == 'buying' || arxivDataBase[i1].type == 'removing') {
        dataTopBuying.add(arxivDataBase[i1]);
      }
      if (arxivDataBase[i1].type == 'adding') {
        dataTopAdding.add(arxivDataBase[i1]);
      }
    }

    for (int i = 0; i < listTopBuying.length; i++) {
      if (txt.contains(listTopBuying[i])) {
        topBuying();
        return;
      }
    }

    for (int i = 0; i < listTopAdding.length; i++) {
      if (txt.contains(listTopAdding[i])) {
        topAdding();
        return;
      }
    }
  }

  static void topBuying() {
    for (int i2 = 0; i2 < dataTopBuying.length; i2++) {
      if (rangTopBuying.contains(dataTopBuying[i2])) {
        for (int i3 = 0; i3 < rangTopBuying.length; i3++) {
          if (rangTopBuying[i3].name == dataTopBuying[i2].name) {
            rangTopBuying[i3].count += dataTopBuying[i2].count;
          }
        }
      } else {
        rangTopBuying.add(dataTopBuying[i2]);
      }
    }
    print(dataTopBuying);
    dataTopBuying = [];
    print('-----------');
    ArxivDataBase.sortTypeArxiv = 'count';
    rangTopBuying.sort();
    print(rangTopBuying);
  }

  static void topAdding() {
    for (int i2 = 0; i2 < dataTopAdding.length; i2++)  {
      if (rangTopAdding.contains(dataTopAdding[i2])) {
        for (int i3 = 0; i3 < rangTopAdding.length; i3++) {
          if (rangTopAdding[i3].name == dataTopAdding[i2].name) {
            rangTopAdding[i3].count += dataTopAdding[i2].count;
          }
        }
      } else {
        rangTopAdding.add(dataTopBuying[i2]);
      }
    }
    print(dataTopAdding);
    dataTopAdding = [];
    print('-----------');
    ArxivDataBase.sortTypeArxiv = 'count';
    rangTopAdding.sort();
    print(rangTopAdding);
  }
}
