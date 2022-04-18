import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  Directory directory = Directory.fromUri(Uri(path: "D:/C++"));

  Directory directory1 = Directory(directory.parent.path + "/C#");

  File file = File(directory1.path + "/db");
  await file.create();
  List<Map<String, dynamic>> list = [
    {
      "id": 0,
      "name": "Flutter B17",
      "date": DateTime.now().toString(),
    },
    {
      "id": 1,
      "name": "Flutter B14",
      "date": DateTime.now().toString(),
    }
  ];

  file.writeAsStringSync(jsonEncode(list));
}