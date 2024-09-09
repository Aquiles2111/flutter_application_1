import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';


class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner:false ,
      title: "Página demo",
      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}