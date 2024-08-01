import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double space;
  const Space(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
      height: space,
    );
  }
}
