import 'package:flutter/material.dart';

class GorillaWorkout extends StatelessWidget {
  const GorillaWorkout({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(5, (index) {
          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset('images/pixel$index.png'),
          );
        }),
      ),
    );
  }
}
