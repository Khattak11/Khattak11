import 'package:flutter/material.dart';
import 'package:my_profile/portfolio.dart';
import 'package:my_profile/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'portfolio',
      theme: ThemeData(
          //    backgroundColor: Colors.purple[50],
        brightness: Brightness.light,
          primarySwatch: Colors.purple,
            canvasColor: Colors.purple.shade50,
          useMaterial3: true,
             chipTheme: const ChipThemeData(
              labelStyle: TextStyle(color: Colors.indigo),
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.indigo)),
              progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.black)),

      darkTheme: ThemeData.dark().copyWith(
        brightness: Brightness.dark,
          backgroundColor: Colors.grey[900],
          primaryColor: Colors.grey,
          canvasColor: Colors.grey.shade900,
          cardColor: Colors.black54,
          dividerColor: Colors.black,
          chipTheme: ChipThemeData(
              backgroundColor: Colors.black,
              side: BorderSide(color: Colors.white)),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.white),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black))),
    //  themeMode: ThemeMode.system,,

      // Automatically switch between light and dark mode based on user's device settings
      home: SplashScreen(),
    );
  }
}
