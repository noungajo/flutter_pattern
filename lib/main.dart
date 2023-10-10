import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'NLP_One',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          //  CountryLocalizations.delegate,
        ],
        translations: Internationalisation(), //my translations
        locale: const Locale("en", "EN"), //default language
        fallbackLocale:
            const Locale("en", "EN"), //fallback locale if wrong local not found
        supportedLocales: const [Locale('fr'), Locale('en'), Locale('ge')],
      ),
        
      initialRoute: AppRoutes.initial, // Définissez la route initiale à partir de AppRoutes
      getPages: AppRoutes.routes, // Utilisez les routes définies dans AppRoutes
     
    );
  }
}
