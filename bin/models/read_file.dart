import 'dart:io';

void main() async{
  Directory directory = Directory.current;

  File file1 = File(directory.path + '/myFile');
  String str = file1.readAsStringSync();
  print(str);

  File file2 = File(directory.path + '/myFile.dart');
  String str2 = file2.readAsStringSync();
  print(str2);

  File file3 = File(directory.path + '/myFile.txt');
  String str3 = file3.readAsStringSync();
  print(str3);

  File file4 = File(directory.path + '/myFile.docx');
  String str4 = file4.readAsStringSync();
  print(str4);
}