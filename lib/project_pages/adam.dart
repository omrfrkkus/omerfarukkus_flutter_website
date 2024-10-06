import 'package:flutter/material.dart';

class Adam extends StatelessWidget {
  const Adam({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(1, (index) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('images/adam$index.png'),
          );
        }),
      ),
    );
  }
}
