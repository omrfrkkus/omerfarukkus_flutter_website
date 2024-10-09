import 'package:flutter/material.dart';

class Johnny extends StatelessWidget {
  const Johnny({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (_, index) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('images/johnny$index.png'),
          );
        },
      ),
    );
  }
}
