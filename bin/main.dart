import 'dart:io';

import 'bin1/user_class_file.dart';

void main() {
  Directory directory = Directory.fromUri(Uri(
      path: "H:/Мой диск/PDP/B17 Bootcamp/Flutter/Projects/lesson_file/bin"));
  Directory directory1 = Directory(directory.path + '/bin1');
  directory1.create();
  File file = File(directory1.path + '/user_class_file.dart');
  file.create();

  AllUsers users = AllUsers();
  users.addUser(User("Jamshid", "Tuxtaev", "abuabdulaziz@gmail.com", "45521"));
  users.readUser();
  print(AllUsers.list[0]);
}
