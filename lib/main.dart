import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    localizationsDelegates: [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      Locale('ja', 'JP'),
    ],
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// 以下のようにデフォルトロケールに固定値を設定するやり方もあるが、
    /// これだと複数言語に対応することが出来ない...
    // Intl.defaultLocale = 'ja';
    /// なので以下の書き方が良い
    Intl.defaultLocale = Localizations.localeOf(context).toString();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(),
            Text(
              DateFormat.yMEd().format(DateTime.now()),
            )
          ],
        ),
      ),
    );
  }
}
