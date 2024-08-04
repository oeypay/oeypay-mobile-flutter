import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class Widgetappbar extends StatelessWidget {
  String? image;

  Widgetappbar({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 0),
      height: 180,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        image:
            image != null ? DecorationImage(image: AssetImage(image!)) : null,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
        color: ColorName.yellowColor,
      ),
    );
  }
}
