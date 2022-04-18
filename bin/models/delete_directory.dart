import 'dart:io';

void main(){
  Directory directory = Directory.current;
  Directory newDirectory = Directory(directory.path + "/myFolder");

  newDirectory.delete();
}