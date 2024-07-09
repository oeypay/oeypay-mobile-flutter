import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class Widgetappbar extends StatelessWidget {
  const Widgetappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 0),
      height: 180,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
        color: ColorName.yellowColor,
      ),
    );
  }
}
