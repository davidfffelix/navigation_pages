import 'package:flutter/material.dart';

import 'one_page.dart';
import 'two_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) {
          return const OnePage();
        },
        '/twoPage': (_) {
          return const TwoPage();
        },
      },
    );
  }
}
