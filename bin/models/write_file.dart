import 'dart:io';
void main() async{
  Directory directory = Directory.current;

  File file1 = File(directory.path + '/myFile');
  file1.writeAsStringSync("First comment");

  File file2 = File(directory.path + '/myFile.dart');
  file2.writeAsStringSync("void main(){\n String str ='First comment';\n print(str);\n}");

  File file3 = File(directory.path + '/myFile.txt');
  file3.writeAsStringSync("First comment");

  File file4 = File(directory.path + '/myFile.docx');
  file4.writeAsStringSync("First comment");
}
