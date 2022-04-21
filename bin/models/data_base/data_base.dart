///176

class DataBase implements Comparable {
  static String sortType = 'name';
  late String name;
  late String category;
  late int price;
  late int count;
  late int ustigaQoyilganPul;
  late DateTime createdTime;
  bool? like;

  DataBase({
    required String name1,
    required String category1,
    required int price1,
    required int count1,
    required int ustigaQoyilganPul1,
    required DateTime createdTime1,
    bool like1 = false,
  }) {
    Name = name1;
    Category = category1;
    Price = price1;
    Count = count1;
    UstigaQoyilganPul = ustigaQoyilganPul1;
    createdTime = createdTime1;
    like = like1;
  }

  String txt = '';

  set Name(String name1) {
    if (name1.isNotEmpty) {
      name = name1;
    } else {
      throw 'name';
    }
  }

  set Category(String category1) {
    for (int i = 0; i < 10; i++) {}
    if (category1.isNotEmpty) {
      category = category1;
    } else {
      throw 'category';
    }
  }

  set Price(int price1) {
    if (price1 >= 0) {
      price = price1;
    } else {
      throw 'price';
    }
  }

  set Count(int count1) {
    if (count1 >= 0) {
      count = count1;
    } else {
      throw 'count';
    }
  }

  set UstigaQoyilganPul(int ustigaQoyilganPul1) {
    if (ustigaQoyilganPul1 >= 0) {
      ustigaQoyilganPul = ustigaQoyilganPul1;
    } else {
      throw 'ustigaQoyilganPul';
    }
  }

  @override
  bool operator ==(Object other) {
    return other is DataBase && name == other.name;
  }

// String txtCheckingFunc() {
//   if (txt.isEmpty) {
//     return '';
//   } else {
//     return txt;
//   }
// }
  String toString() {
    return '\nname: $name\nprice: $price\ncount: $count\ncreated time: '
        '$createdTime\ncategory: $category\nUstiga qoyilgan pul: '
        '$ustigaQoyilganPul\n--------------------';
  }

  @override
  int compareTo(other) {
    switch (sortType) {
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
        return like.hashCode.compareTo(other.like.hashCode);
      default:
        return name.compareTo(other.name);
    }
  }
}

List<DataBase> dataBase = [
  DataBase(
    //1
    name1: 'olma',
    category1: 'fruit',
    count1: 14,
    price1: 12999,
    ustigaQoyilganPul1: 1000,
    createdTime1: DateTime.parse('2022-03-17'),
    like1: false,
  ),
  DataBase(
    //2
    name1: 'banana',
    category1: 'fruit',
    price1: 120,
    count1: 129,
    ustigaQoyilganPul1: 100000,
    createdTime1: DateTime.parse('2022-03-18'),
    like1: false,
  ),
  DataBase(
    //3
    name1: 'anor',
    category1: 'fruit',
    price1: 20000,
    count1: 14,
    ustigaQoyilganPul1: 20000,
    createdTime1: DateTime.parse('2022-03-19'),
    like1: false,
  ),
  DataBase(
    //4
    name1: 'uzum',
    category1: 'fruit',
    price1: 12000,
    count1: 100,
    ustigaQoyilganPul1: 10000,
    createdTime1: DateTime.parse('2022-03-20'),
    like1: false,
  ),
  DataBase(
    //5
    name1: 'baliq',
    category1: 'fish',
    price1: 27000,
    count1: 12,
    ustigaQoyilganPul1: 2000,
    createdTime1: DateTime.parse('2022-03-12'),
    like1: false,
  ),
  DataBase(
    //6
    name1: 'qovun',
    category1: 'vegetable',
    price1: 220000,
    count1: 12,
    ustigaQoyilganPul1: 20000,
    createdTime1: DateTime.parse('2022-03-01'),
  ),
];
