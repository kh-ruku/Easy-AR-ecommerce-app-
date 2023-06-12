import 'package:ecomm_store/screens/home_page.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:const [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: const[
    Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  locale: const Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      title: 'E comm Store',
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor
      ),
      home: const HomeScreen(),
    );
  }
}

