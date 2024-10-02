import 'package:flutter/material.dart';
import 'package:omerfarukkus_flutter_website/pages/home_page.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context, "Montserrat", "Montserrat");
    final theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Ömer Faruk Kuş',
      theme: theme.dark(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
