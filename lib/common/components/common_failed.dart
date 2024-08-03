import 'package:flutter/material.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';

class CommonFailed extends StatelessWidget {
  const CommonFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/failed.png",
            width: MediaQuery.of(context).size.width / 2),
        const Space(10),
        const Center(
          child: Text(
            "Hmmmmmmm!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorName.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        const Center(
          child: Text(
            "Terjadi kesalahan, periksa koneksi Anda dan coba lagi",
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorName.black, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
