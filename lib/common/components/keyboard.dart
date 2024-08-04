import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/colors.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyTap;
  final Function onBackspace, onFinger;

  const CustomKeyboard(
      {super.key,
      required this.onKeyTap,
      required this.onBackspace,
      required this.onFinger});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.yellowColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildRow(['1', '2', '3']),
          buildRow(['4', '5', '6']),
          buildRow(['7', '8', '9']),
          buildRow(['finger', '0', 'backspace']),
        ],
      ),
    );
  }

  Widget buildRow(List<String> keys) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: keys.map((key) {
        return key == 'backspace'
            ? InkWell(
                onTap: () => onBackspace(),
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Icon(Icons.backspace_outlined),
                  ),
                ),
              )
            : key == 'finger'
                ? InkWell(
                    onTap: () => onFinger(),
                    child: const SizedBox(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: Icon(
                          Icons.fingerprint,
                          size: 35,
                        ),
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () => onKeyTap(key),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: Text(
                          key,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  );
      }).toList(),
    );
  }
}
