import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF5E35B1 );

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.purpleAccent,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.pink,
  Colors.indigoAccent,
];

class AppTheme {

  final int selectedColor;

  AppTheme({
    required this.selectedColor 
  }): assert ( selectedColor >=  0 && selectedColor < _colorThemes.length -1, 'Colors must be 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}