import 'dart:io';
void main() {
  Directory directory = Directory.fromUri(
      Uri(path: 'H:/Мой диск/PDP/B17 Bootcamp/Flutter/Projects'));
  Directory directory1 = Directory(directory.path + '/UserDB');
  directory1.create();
  File file = File(directory1.path + '/db.txt');
  file.create();
  file.writeAsStringSync(
      'int a = 123; double b = 32.1; num c = 159; var d = 786;');
  String txt = file.readAsStringSync();
  print(txt);
}