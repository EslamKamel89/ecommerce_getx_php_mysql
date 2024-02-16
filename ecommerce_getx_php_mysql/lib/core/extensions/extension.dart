import 'package:flutter/material.dart';

// yellow
String _toYellow(String text) {
  return '\x1B[33m$text\x1B[0m';
}

// red
String _toRed(String text) {
  return '\x1B[31m$text\x1B[0m';
}

// blue
String _toBlue(String text) {
  return '\x1B[34m$text\x1B[0m';
}

//green
String _toGreen(String text) {
  return '\x1B[32m$text\x1B[0m';
}

extension PrintToConsole on Object? {
  get pr {
    String message = _toYellow('[LOG] [B O D Y > > ] ') + _toGreen('$this');
    print(message);
    return this;
  }
}

extension DontPrintToConsole on Object? {
  get prx {
    return this;
  }
}

extension PrintTitleToConsole on Object? {
  get prt {
    String message = _toRed('[LOG] [T I T L E > ] ') + _toRed('$this');
    print(message);
    return this;
  }
}

extension CenterOneWidget on Widget {
  Widget get cr => Center(child: this);
}

extension ExpandOneWidget on Widget {
  Widget get ex => Expanded(child: this);
}

extension CenterAllWidgets on List<Widget> {
  List<Widget> get center => map((e) => Center(child: e)).toList();
}

extension ExpandAllWidgets on List<Widget> {
  List<Widget> get expand => map((e) => Expanded(child: e)).toList();
}

extension MapValueToString on Map {
  Map<String, String> get keyAndvalueToString => map((key, value) => MapEntry(key.toString(), value.toString()));
}

extension ToMap on Object? {
  Map<String, Object?> get toMap => this as Map<String, Object?>;
}

extension ToInt on Object? {
  int get toInt => this as int;
}

extension ToDouble on Object? {
  double get toDouble => this as double;
}

snackBar({required BuildContext context, required String title}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(title).cr,
    duration: const Duration(milliseconds: 800),
  ));
}
