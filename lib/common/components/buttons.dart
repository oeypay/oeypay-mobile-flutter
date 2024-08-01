import 'package:flutter/material.dart';
import 'package:oepay/common/components/loading.dart';
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

class ButtonDefault extends StatelessWidget {
  final double? radius;
  final Color? bgColor, labelColor;
  final String? label;
  final bool? isLoading;
  final void Function()? press;
  const ButtonDefault(
      {super.key,
      this.bgColor,
      this.label,
      this.labelColor,
      this.press,
      this.isLoading = false,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading == false ? press : null,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 100),
            color: bgColor ?? ColorName.black),
        child: Center(
          child: isLoading!
              ? Loading()
              : Text(label ?? "Button",
                  style: TextStyle(
                      fontSize: 14,
                      color: labelColor ?? ColorName.white,
                      fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
