import 'package:flutter/material.dart';
import 'package:omerfarukkus_flutter_website/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ömer Faruk Kuş',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
