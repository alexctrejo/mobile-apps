import 'package:flutter/material.dart';

List<Color> _colorThemes = [
  Colors.amber,
  Colors.black,
  Colors.purpleAccent,
  Colors.white54,
  Colors.lightBlue
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
