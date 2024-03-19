import 'dart:convert';
import 'dart:io';
// import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class TimerSettings {
  final int hours;
  final int minutes;
  final int seconds;

  TimerSettings({
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
  });

  factory TimerSettings.fromJson(Map<String, dynamic> json) {
    return TimerSettings(
      hours: json['hours'] ?? 0,
      minutes: json['minutes'] ?? 0,
      seconds: json['seconds'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
    };
  }
}

// class TimerStorage {
//   Future<String> get _localPath async {
//     final directory = await getApplicationCacheDirectory();
//     return directory.path;
//   }

//   // Future<File> get _localFile async {
//   //   final path = await _localPath;
//   //   return File(path);
//   // }

//   Future<String> maverlocalPath() async {
//     final directory = await getApplicationCacheDirectory();
//     return directory.path;
//   }

//   Future<TimerSettings> readSettings({required String localPath}) async {
//     try {
//       final pathSistem = await maverlocalPath();
//       final String fullPath = '$pathSistem/$localPath';
//       final file = File(fullPath);

//       String contents = await file.readAsString();
//       Map<String, dynamic> jsonMap = json.decode(contents);
//       return TimerSettings.fromJson(jsonMap);
//     } catch (e) {
//       print('Se crea instancia nueva');
//       // Si hay un error o el archivo no existe, se devuelve un objeto TimerSettings vacío
//       return TimerSettings();
//     }
//   }

//   Future<File> writeSettings(
//       {required TimerSettings settings, required String localPath}) async {
//     final file = File(path.join(await _localPath, localPath));
//     print(file);
//     // return file;
//     return file.writeAsString(json.encode(settings.toJson()));
//   }
// }

class TimerFileManager {
  Future<File> _getFile({required String path}) async {
    Directory directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$path');
  }

  Future<void> writeSettings(
      {required String path, required TimerSettings settings}) async {
    File file = await _getFile(path: path);
    String jsonString = jsonEncode(settings.toJson());
    await file.writeAsString(jsonString);
  }

  Future<TimerSettings> readSettings({required String path}) async {
    try {
      File file = await _getFile(path: path);
      String jsonString = await file.readAsString();
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);

      print('cositos:   ${TimerSettings.fromJson(jsonMap)}');
      return TimerSettings.fromJson(jsonMap);
    } catch (e) {
      // Handle exceptions if file does not exist or if parsing fails
      print("Error loading timer settings: $e");
      return TimerSettings();
    }
  }
}
