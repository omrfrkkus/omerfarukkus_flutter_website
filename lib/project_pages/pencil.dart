import 'package:flutter/material.dart';

class Pencil extends StatelessWidget {
  const Pencil({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (_, index) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('images/pencil$index.png'),
          );
        },
      ),
    );
  }
}
