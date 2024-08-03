import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';

class CommonEmpty extends StatelessWidget {
  final String? msg;
  final void Function()? pressReload;
  const CommonEmpty({super.key, this.msg, this.pressReload});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/empty.png",
            width: MediaQuery.of(context).size.width / 3),
        const Space(10),
        const Center(
          child: Text(
            "Oops!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorName.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Center(
          child: Text(
            msg ?? "Data kosong",
            textAlign: TextAlign.center,
            style: const TextStyle(color: ColorName.black, fontSize: 14),
          ),
        ),
        IconButton(
            onPressed: pressReload,
            icon: const Icon(FontAwesomeIcons.rotateRight))
      ],
    );
  }
}
