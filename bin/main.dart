///16

import 'dart:io';
import 'models/read_text.dart';
import 'models/commands/commands.dart';
String str = '';
void main() async {
  while(true) {
    try {
      print('-------------------');
      if (Command.newConsole());
      stdout.write('enter text: ');
      if (Command.newConsole());
      str = stdin.readLineSync()!.toLowerCase();
      if (bl27) Command.all(txt: str);
      ReadText.readTxt(txt: str);
    } catch (e) {
      print(e);
    }
  }
}
