
import 'package:flutter/material.dart';
import 'package:kosaku_nakano/theme/color_theme.dart';

/// colorTheme から ThemeData を getするためのclass
/// 通常, Material Page Router の上で呼ばれる
class AppThemeData {
  AppThemeData(this.ct);

  final ColorTheme ct;

  ThemeData get themeData {
    final textTheme =
        (ct.isDark ? ThemeData.dark() : ThemeData.light()).textTheme.copyWith(
            //headline1: TextStyle(color: ct.primaryTextColor),
            //headline2: TextStyle(color: ct.primaryTextColor),
            //headline3: TextStyle(color: ct.primaryTextColor),
            //headline4: TextStyle(color: ct.primaryTextColor),
            //headline5: TextStyle(color: ct.primaryTextColor),
            //headline6: TextStyle(color: ct.primaryTextColor),
            //subtitle1: TextStyle(color: ct.primaryTextColor),
            //subtitle2: TextStyle(color: ct.primaryTextColor),
            //bodyText1: TextStyle(color: ct.primaryTextColor),
            //bodyText2: TextStyle(color: ct.primaryTextColor),
            //caption: TextStyle(color: ct.primaryTextColor),
            //button: TextStyle(color: ct.primaryTextColor),
            //overline: TextStyle(color: ct.primaryTextColor),
            );
    final colorScheme = ColorScheme(
      brightness: ct.isDark ? Brightness.dark : Brightness.light,
      // ここを変えれば、ボタンとかも変わる
      primary: ct.accentColor,
      primaryVariant: ct.accentColor,
      secondary: ct.accentColor,
      secondaryVariant: ct.accentColor,
      background: ct.color1,
      surface: ct.color1,
      onBackground: ct.primaryTextColor,
      onSurface: ct.primaryTextColor,
      onError: ct.secondaryTextColor,
      onPrimary: ct.secondaryTextColor,
      onSecondary: ct.secondaryTextColor,
      error: ct.cautionTextColor,
    );

    // copyWithで付け足せる
    final extendedThemeData = ThemeData.from(
      textTheme: textTheme,
      colorScheme: colorScheme,
    ).copyWith(
      appBarTheme: AppBarTheme(
        elevation: 1,
        color: ct.ab,
        foregroundColor: ct.primaryTextColor,
        iconTheme: IconThemeData(color: ct.iconColor),
        titleTextStyle: TextStyle(
          color: ct.primaryTextColor,
        ),
        toolbarTextStyle: TextStyle(
          color: ct.primaryTextColor,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: ct.color4,
        cursorColor: ct.color4,
        selectionHandleColor: ct.color4,
      ),
      iconTheme: IconThemeData(color: ct.primaryTextColor),
      scaffoldBackgroundColor: ct.fg,
      backgroundColor: ct.bg,
      canvasColor: ct.bb,
    );

    /// Return the themeData which MaterialApp can now use
    return extendedThemeData;
  }
}

/*
ThemeData get themeData {
    final textTheme =
        (ct.isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    final colorScheme = ColorScheme(
      brightness: ct.isDark ? Brightness.dark : Brightness.light,
      primary: ct.accentColor,
      primaryVariant: ct.accentColor,
      secondary: ct.accentColor,
      secondaryVariant: ct.accentColor,
      background: ct.color1,
      surface: ct.color1,
      onBackground: ct.primaryTextColor,
      onSurface: ct.primaryTextColor,
      onError: ct.secondaryTextColor,
      onPrimary: ct.primaryTextColor,
      onSecondary: ct.secondaryTextColor,
      error: ct.cautionTextColor,
    );

    // copyWithで付け足せる
    final extendedThemeData = ThemeData.from(
      textTheme: textTheme,
      colorScheme: colorScheme,
    ).copyWith(

    );

    /// Return the themeData which MaterialApp can now use
    return extendedThemeData;
  }
 */
