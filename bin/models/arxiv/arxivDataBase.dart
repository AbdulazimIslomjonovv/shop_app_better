///57

List<ArxivDataBase> arxivDataBase = [];

class ArxivDataBase implements Comparable{
  late String name;
  late String category;
  late int price;
  late int count;
  late DateTime createdTime;
  late int ustigaQoyilganPul;
  int? sotilganPuli;
  late DateTime? sotilganVaqti;
  bool? likes;
  late String type;


  ArxivDataBase({
    required String name1,
    required String category1,
    required int price1,
    required int count1,
    required int ustigaQoyilganPul1,
    required DateTime createdTime1,
     int? sotilganPuli1,
     DateTime? sotilganVaqti1,
     bool? like1,
    required String type1,
  }) {
    type = type1;
    name = name1;
    category = category1;
    price = price1;
    count = count1;
    ustigaQoyilganPul = ustigaQoyilganPul1;
    createdTime = createdTime1;
    sotilganPuli = sotilganPuli1;
    sotilganVaqti = sotilganVaqti1;
    likes = like1;
  }

  String txt = '';

  @override
  bool operator ==(Object other) {
    return other is ArxivDataBase && name == other.name;
  }

  static String sortTypeArxiv = 'name';

  int compareTo(other) {
    switch (sortTypeArxiv) {
      case 'Z-A':
        return other.name.compareTo(name);
      case 'count':
        return count.compareTo(other.count);
      case 'price':
        return price.compareTo(other.price);
      case 'price21':
        return other.price.compareTo(price);
      case 'count21':
        return other.count.compareTo(count);
      case 'time':
        return createdTime.compareTo(other.createdTime);
      case 'time21':
        return other.createdTime.compareTo(createdTime);
      case 'category':
        return category.compareTo(other.category);
      case 'category21':
        return other.category.compareTo(category);
      case 'foyda':
        return ustigaQoyilganPul.compareTo(other.ustigaQoyilganPul);
      case 'foyda21':
        return other.ustigaQoyilganPul.compareTo(ustigaQoyilganPul);
      case 'like':
        return likes.hashCode.compareTo(other.like.hashCode);
      default:
        return name.compareTo(other.name);
    }
  }


// String txtCheckingFunc() {
//   if (txt.isEmpty) {
//     return '';
//   } else {
//     return txt;
//   }
// }
  String toString() {
    return '\nname: $name\nprice: $price\ncount: $count\ncreated time: $createdTime'
        '\nsotilgan puli: $sotilganPuli\nsotilgan vaqti: $sotilganVaqti\nustigaQoyilganPul: '
        '$ustigaQoyilganPul\nlike: $likes\ntype: $type--------------------';
  }
}
