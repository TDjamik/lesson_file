import 'dart:io';

void main() {
  Directory directory = Directory.fromUri(Uri(path: 'C:/Test'));
  File file = File(directory.path + '/test.txt');
  file.create();
  file.writeAsStringSync('Assalam');
  String a = file.readAsStringSync();
  print(a);
  File file2 = File(directory.path + '/main.dart');
  file2.create();
  file2.writeAsStringSync(" void main(){\n int b = 258;\n print(b);}");

  // print(directory.path);
  // print(directory.parent.path);
}