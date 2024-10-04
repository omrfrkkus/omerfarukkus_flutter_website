import 'package:flutter/material.dart';
import 'package:omerfarukkus_flutter_website/pages/home_page.dart';
import 'package:omerfarukkus_flutter_website/services/locale_service.dart';
import 'package:provider/provider.dart';
import 'util.dart';
import 'theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleService(),
      child: Consumer<LocaleService>(
        builder: (context, localeService, child) {
          final textTheme =
              createTextTheme(context, "Montserrat", "Montserrat");
          final theme = MaterialTheme(textTheme);
          return MaterialApp(
            title: 'Ömer Faruk Kuş',
            theme: theme.dark(),
            home: const HomePage(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: localeService.currentLocale,
          );
        },
      ),
    );
  }
}
