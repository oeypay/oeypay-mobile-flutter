import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';

class CommonNote extends StatelessWidget {
  final String? msg, title;
  final void Function()? pressReload;
  const CommonNote({super.key, this.msg, this.pressReload, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/note.png",
            width: MediaQuery.of(context).size.width / 3),
        const Space(10),
        Center(
          child: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ColorName.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Center(
          child: Text(
            msg ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(color: ColorName.black, fontSize: 14),
          ),
        ),
        if (pressReload != null)
          IconButton(
              onPressed: pressReload,
              icon: const Icon(FontAwesomeIcons.rotateRight))
      ],
    );
  }
}
