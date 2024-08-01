import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class Loading extends StatelessWidget {
  final Color? color;
  const Loading({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        color: color ?? ColorName.white,
        strokeWidth: 2,
      ),
    );
  }
}
