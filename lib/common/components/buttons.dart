import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';
import '../constant/colors.dart';

enum ButtonStyle { filled, custom }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.color = ColorName.yellowColor,
    this.textColor = Colors.black,
    this.width = double.infinity,
    this.height = 60.0,
    this.borderRadius = 20.0,
    this.icon,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyle.filled
          ? ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: CustomTextStyles.textButton,
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                // side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(label, style: CustomTextStyles.textButton),
                ],
              ),
            ),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  // const ButtonCustom({super.key});
  const ButtonCustom.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    required this.color,
    required this.textColor,
    this.height = 50.0,
    this.width = 150.0,
    this.borderRadius = 20.0,
    this.icon,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final double borderRadius;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyle.filled
          ? ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                // shape: RoundedRectangleBorder(
                //   side: BorderSide.none,
                //   borderRadius: BorderRadius.circular(20.0),
                // ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // icon ?? const SizedBox.shrink(),
                  // if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
            ),
    );
  }
}
