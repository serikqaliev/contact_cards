import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../localization/generated/localization.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Chat App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const <LocalizationsDelegate<Object?>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          Localization.delegate,
        ],
        theme: View.of(context).platformDispatcher.platformBrightness ==
                Brightness.dark
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(
                useMaterial3: true,
              ), // TODO(serikqaliyev): implement theme
        home: const Placeholder(),
        supportedLocales: const [
          Locale('en', ''),
          Locale('th', ''),
        ],
        locale: const Locale(
          'en',
          'US',
        ), // TODO(serikqaliyev): implement locale
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child ?? const SizedBox.shrink(),
        ),
      );
}
