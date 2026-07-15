import 'package:comicbookapp/l10n/app_localizations.dart';
import 'package:comicbookapp/navigation/router.dart';
import 'package:comicbookapp/ui.theme/styles/color_scheme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'navigation/navigation_app.dart';




// Notificador global para el tema
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: themeNotifier,
          builder: (_, ThemeMode currentMode, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              initialRoute: splash,
              onGenerateRoute: RouteGenerator.generateRoute,
              title: 'Flutter Demo',
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: MaterialTheme.lightScheme(),
                brightness: Brightness.light,
              ),
              darkTheme: ThemeData(
                useMaterial3: true,
                colorScheme: MaterialTheme.darkScheme(),
                brightness: Brightness.dark,
              ),
              themeMode: currentMode,
            );
          },
        );
      },
    );
  }
}
