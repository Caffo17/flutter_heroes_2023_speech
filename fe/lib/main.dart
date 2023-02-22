import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/core/di/di_service.dart' as di;
import 'app/core/l10n/l10n.dart';
import 'app/core/router/app_navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: AppNavigator().navigatorKey,
      onGenerateRoute: AppNavigator().onGenerateRoute,
      builder: (context, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          child: child!,
        );
      },
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.black,
        unselectedWidgetColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'Muli',
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Muli',
          ),
          bodyText2: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Muli',
          ),
          caption: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontFamily: 'Muli',
          ),
          button: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: 'Muli',
          ),
        ),
      ),
    );
  }
}
