import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class CommonLoadingIndicator extends StatelessWidget {
  const CommonLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              color: ColorName.yellowColor,
              strokeWidth: 2,
            ),
          )),
    );
  }
}
