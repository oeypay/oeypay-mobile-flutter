import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class CustomLis extends StatelessWidget {
  final String title;
  final String deskripsi;

  const CustomLis({
    super.key,
    required this.title,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text(
              title,
              style: CustomTextStyles.titlesection,
            ),
          ),
          Text(
            deskripsi,
            style: CustomTextStyles.titlesection,
          ),
        ],
      ),
    );
  }
}
