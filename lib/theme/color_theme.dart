import 'package:flutter/material.dart';

abstract class ColorTheme {
  // isDark ダークテーマかどうか
  abstract final bool isDark;

  // 背景色から順にcolor1からcolor10
  // 例えばlightColorThemeなら, color1が白色, color10が黒色
  abstract final Color color1;
  abstract final Color color2;
  abstract final Color color3;
  abstract final Color color4;
  abstract final Color color5;
  abstract final Color color6;
  abstract final Color color7;
  abstract final Color color8;
  abstract final Color color9;
  abstract final Color color10;

  /// background
  abstract final Color bg;

  /// foreground
  abstract final Color fg;

  /// bottomBar
  abstract final Color bb;

  /// appBar
  abstract final Color ab;

  /// border
  abstract final Color border;

  // textの色
  // primaryTextColor: 普通の文字の色. 背景色などのコントラストカラー
  abstract final Color primaryTextColor;
  // secondaryTextColor: カードなどの上の文字の色. カードの色のコントラストカラー
  abstract final Color secondaryTextColor;
  // subTextColor: 目立たない文字の色
  abstract final Color subTextColor;
  // accentTextColor: 目立たせたい文字の色
  abstract final Color accentTextColor;
  // cautionTextColor: エラー表示など
  abstract final Color cautionTextColor;
  // clickableTextColor: タップできるlinkの色
  abstract final Color clickableTextColor;
  // textButtonColor
  abstract final Color textButtonTextColor;

  // appBarContrastTextColor
  abstract final Color abContrastTextColor;

  // paleDividerColor
  abstract final Color paleDividerColor;

  // 差し色
  abstract final Color accentColor;

  abstract final Color iconColor;

  abstract final Color activeIcon;

  abstract final Color inactiveIcon;

  abstract final Color like;
}

class DarkColorTheme implements ColorTheme {
  @override
  final isDark = true;
  @override
  final color1 = const Color(0xFF212121);
  @override
  final color2 = const Color(0xFF424242);
  @override
  final color3 = const Color(0xFF616161);
  @override
  final color4 = const Color(0xFF757575);
  @override
  final color5 = const Color(0xFF9E9E9E);
  @override
  final color6 = const Color(0xFFBDBDBD);
  @override
  final color7 = const Color(0xFFE0E0E0);
  @override
  final color8 = const Color(0xFFEEEEEE);
  @override
  final color9 = const Color(0xFFF5F5F5);
  @override
  final color10 = const Color(0xFFFAFAFA);

  @override
  final border = const Color(0xFF000000);

  @override
  final primaryTextColor = const Color(0xFFFFFFFF);
  @override
  final secondaryTextColor = const Color(0xFFFFFFFF);
  @override
  final accentTextColor = Colors.blueAccent;
  @override
  final cautionTextColor = const Color(0xFFB00020);
  @override
  final clickableTextColor = const Color(0xFF2196F3);
  @override
  final textButtonTextColor = const Color(0xFF2196F3);
  @override
  final accentColor = Colors.blueAccent;

  @override
  Color get ab => const Color(0xFF1c1c1e);

  @override
  Color get abContrastTextColor => primaryTextColor;

  @override
  Color get bb => color3;

  @override
  Color get bg => border;

  @override
  Color get fg => const Color(0xFF1c1c1e);

  @override
  Color get iconColor => primaryTextColor;

  @override
  Color get paleDividerColor => color3;

  @override
  Color get subTextColor => color8;

  @override
  Color get activeIcon => color10;

  @override
  Color get inactiveIcon => color5;

  @override
  Color get like => Colors.pink[300] ?? Colors.pink;
}

/// defaultColorTheme: lightColorTheme
class LightColorTheme implements ColorTheme {
  @override
  final isDark = false;
  @override
  final color1 = const Color(0xFFFAFAFA);
  @override
  final color2 = const Color(0xFFF5F5F5);
  @override
  final color3 = const Color(0xFFEEEEEE);
  @override
  final color4 = const Color(0xFFE0E0E0);
  @override
  final color5 = const Color(0xFFBDBDBD);
  @override
  final color6 = const Color(0xFF9E9E9E);
  @override
  final color7 = const Color(0xFF757575);
  @override
  final color8 = const Color(0xFF616161);
  @override
  final color9 = const Color(0xFF424242);
  @override
  final color10 = const Color(0xFF212121);

  @override
  final border = const Color(0xFF000000);

  @override
  final primaryTextColor = const Color(0xdd000000);
  @override
  final secondaryTextColor = const Color(0xFFE0E0E0);
  @override
  final accentTextColor = Colors.blueAccent;
  @override
  final cautionTextColor = const Color(0xFFB00020);
  @override
  final clickableTextColor = const Color(0xFF2196F3);
  @override
  final textButtonTextColor = const Color(0xFF2196F3);
  @override
  final accentColor = Colors.blueAccent;

  @override
  Color get ab => color1;

  @override
  Color get abContrastTextColor => primaryTextColor;

  @override
  Color get bb => color3;

  @override
  Color get bg => color3;

  @override
  Color get fg => color3;

  @override
  Color get iconColor => primaryTextColor;

  @override
  Color get paleDividerColor => color3;

  @override
  Color get subTextColor => color8;

  @override
  Color get activeIcon => color10;

  @override
  Color get inactiveIcon => color6;
  @override
  Color get like => Colors.pink[600] ?? Colors.pink;
}
