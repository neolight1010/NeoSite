import 'package:flutter/material.dart';

ThemeData mainTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: _appBarTheme,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused))
              return _colorScheme.onBackground;

            return _colorScheme.primary;
          },
        ),
      ),
    ),
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'FiraMono',
          bodyColor: _colorScheme.onBackground,
          fontSizeFactor: 1.9,
        ),
    colorScheme: _colorScheme,
  );
}

final ColorScheme _colorScheme = ColorScheme.dark(
  background: Colors.black,
  onBackground: Colors.white,
  primary: Colors.red.shade700,
  secondary: Colors.cyan,
);

final _appBarTheme = AppBarTheme(
  backgroundColor: _colorScheme.background,
);
