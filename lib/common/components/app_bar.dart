import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';

class AppbarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String? title, titleRight;
  final Color? bgColor, colorTitle;
  final void Function()? pressBack;
  final bool? automaticallyImplyLeading;
  const AppbarDefault(
      {super.key,
      required this.title,
      this.pressBack,
      this.automaticallyImplyLeading = true,
      this.bgColor,
      this.titleRight,
      this.colorTitle});
  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: Text(
              title ?? '',
              style: TextStyle(
                  fontSize: 18,
                  color: colorTitle ?? ColorName.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          if (titleRight != null)
            Text(
              titleRight ?? '',
              style:
                  TextStyle(fontSize: 14, color: colorTitle ?? ColorName.black),
            ),
        ],
      ),
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: bgColor ?? ColorName.white,
      leading: automaticallyImplyLeading!
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: colorTitle ?? Colors.black,
                size: 20,
              ),
              onPressed: (pressBack != null)
                  ? pressBack
                  : () => Navigator.of(context).pop(),
            )
          : null,
    );
  }
}
