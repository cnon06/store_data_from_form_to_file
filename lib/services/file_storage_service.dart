import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:storage/models/user_info.dart';

class FileStorageService {
  Future<String> _getFilePath() async {
    final filePath = await getApplicationDocumentsDirectory();
    var filePathString = filePath.toString();
    filePathString = filePath.toString();
    filePathString = filePathString.replaceAll("'", "");
    filePathString = filePathString.replaceAll("Directory: ", "");

 

    return filePathString;
  }

  writeToFile(UserInfo userInfo) async {
    final file = File("${await _getFilePath()}/info.txt");

    file.writeAsString(jsonEncode(userInfo.toJson()).toString());
  }

  Future<UserInfo> readFromFile() async {
    final file = File("${await _getFilePath()}/info.txt");
    final fileComponents = await file.readAsString();
    
    final json = jsonDecode(fileComponents);
    return UserInfo.fromJson(json);
  }



}
