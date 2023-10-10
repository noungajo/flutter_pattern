import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Storage {
  //====  utiliser l'approche des fichiers pour déterminer si le user s'est déjà connecté ou pas ===============
// find the correct local apath
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

//create a reference to the file location : to acheive file
  /* Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/user_data.txt');
  }*/
  Future<File> _localFile(String fileName) async {
    final path = await _localPath;
    return File('$path/$fileName');
  }

// write data to the file
  Future<File> writeUserInfos(String userData, String fileName) async {
    final file = await _localFile(fileName);

    // Write the file
    return file.writeAsString(userData);
  }

//read data from the file
  Future<String> readUserInfos(String fileName) async {
    try {
      final file = await _localFile(fileName);

      // Read the file
      final contents = await file.readAsString();
      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return "echec";
    }
  }

/*
 check if file exist
*/
  Future<bool> existFile(String fileName) async {
    File file = await _localFile(fileName);
    final test = await file.exists();
    return test;
  }

  /*
   delete a local file 
  */
  Future<int> deleteFile(String fileName) async {
    try {
      final file = await _localFile(fileName);

      await file.delete();
      return 1;
    } catch (e) {
      return 0;
    }
  }
}
