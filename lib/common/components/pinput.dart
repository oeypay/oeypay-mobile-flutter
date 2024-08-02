import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinPutDefault extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onCompleted;
  const PinPutDefault(
      {super.key, this.controller, this.focusNode, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
    );
    return Pinput(
      length: 6,
      animationCurve: Curves.bounceIn,
      animationDuration: Durations.long1,
      controller: controller,
      focusNode: focusNode,
      obscureText: true,
      obscuringWidget: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onCompleted: onCompleted,
    );
  }
}
