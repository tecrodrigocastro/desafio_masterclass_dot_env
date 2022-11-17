import 'dart:io';

Map<String, String> dotEnv() {
  final Map<String, String> map = {};

  final file = File('.env');
  final allText = file.readAsStringSync();
  //print(allText);

  for (var line in allText.split('\n')) {
    line = line.replaceAll(RegExp(r'\#.*'), '');
    line = line.trim();
    final lineBreak = line.split('=');

    if (lineBreak.length != 1) {
      map[lineBreak[0]] = lineBreak[1];
    }
  }
  print(map['JWT_REFRESH_TOKEN_EXPIRESIN']);
  return map;
}
