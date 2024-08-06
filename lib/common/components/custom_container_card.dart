import 'package:flutter/material.dart';

class CustomContainerCard extends StatelessWidget {
  final Widget child;
  final Color color;

  const CustomContainerCard(
      {required this.child, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
      // padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color),
      ),
      child: child,
    );
  }
}
