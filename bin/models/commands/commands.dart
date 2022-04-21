///26

import 'dart:io';

List<String> listPin = ['pin'];
List<String> listNewConsole = ['cls'];
String newPin = 'pin123';
String newPin1 = 'pin123';
String PIN = 'Abdulazim_027';
String phoneNumber = '+998990330919';
String oldPin = 'pin123';
int t = 0;
int tUrinish = 0;
bool bl27 = false;
class Command {
  static void all({required String txt}) {
    for (int i = 0; i < listPin.length; i++) {
      if (txt.contains(listPin[i])) PinAll(); break;
    }
    for (int i = 0; i < listNewConsole.length; i++) {
      if (txt.contains(listNewConsole[i])) {
        newConsole();
        bl27 = true;
      } else {
        bl27 = false;
      }
    }
  }

  static void PinAll({newPin1 = 'pin123'}) {
    int tNewPin = 0;
    bool bl = true;
    if (tUrinish > 5) {
      String newPIN = '';
      String newPhoneNumber = '';
      stdout.write('enter PIN: ');
      newPIN = stdin.readLineSync()!;
      stdout.write('enter phone number: ');
      newPhoneNumber = stdin.readLineSync()!;
      if (newPIN == PIN && phoneNumber == newPhoneNumber) {
        tUrinish = 0;
      }
    }

    while (tUrinish <= 5) {
      if (t != 0 && bl) {
        stdout.write('enter old pin: ');
        newPin = stdin.readLineSync()!;
      }
      String newPin2 = '';
      if (newPin == oldPin) {
        bl = false;
        if (tNewPin > 1) break;
        stdout.write('enter new pin: ');
        newPin2 = stdin.readLineSync()!;
        stdout.write('enter new pin again: ');
        newPin1 = stdin.readLineSync()!;
        if (newPin1 == newPin2) {
          oldPin = newPin1;
          t++;
          break;
        } else {
          tNewPin++;
        }
        tUrinish = 0;
      } else {
        tUrinish++;
      }
      if (tUrinish == 3) {
        print('waiting...');
        sleep(Duration(seconds: 10));
      } else if (tUrinish == 5) {
        print('waiting...');
        sleep(Duration(seconds: 10));
      }
    }
  }

  static bool newConsole() {
    if (bl27) {
      print('\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n');
      // bl27 = false;
      return true;
    } else return false;
  }
}