import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kosaku_nakano/theme/app_theme_data.dart';
import 'package:kosaku_nakano/theme/color_theme.dart';
import 'package:kosaku_nakano/views/home.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final locale = useProvider(localeStatePod.select((value) => value.locale));
    return MaterialApp(
      theme: AppThemeData(LightColorTheme()).themeData,
      title: 'Kosaku Nakano',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // locale: locale,
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ja', ''), // Spanish, no country code
      ],
      home: Home(),
    );
  }
}
