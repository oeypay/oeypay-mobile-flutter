import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class CustomMessageContainer extends StatelessWidget {
  final String message;

  const CustomMessageContainer({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorName.yellowSmoth,
      ),
      child: Text(
        message,
        style: CustomTextStyles.titleItem,
      ),
    );
  }
}

class CustomExpandedTile extends StatelessWidget {
  final ExpandedTileController controller;
  final String title;
  final String? imag;
  final Widget contentWidgets;

  const CustomExpandedTile({
    Key? key,
    this.imag,
    required this.controller,
    required this.title,
    required this.contentWidgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedTile(
      theme: ExpandedTileThemeData(
        headerColor: Colors.transparent,
        contentBackgroundColor: ColorName.yellowSmoth,
      ),
      controller: controller,
      title: Row(
        children: [
          if (imag != null) // Check if imag is not null
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                imag!,
                width: 50,
              ),
            )
          else
            Container(),
          // SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: CustomTextStyles.titleShowModal,
            ),
          ),
        ],
      ),
      content: contentWidgets,
    );
  }
}

class HelpSection extends StatelessWidget {
  const HelpSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 25, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/icons/Group24.png',
            width: 44,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Butuh Bantuan',
                style: CustomTextStyles.titlesection,
              ),
              Text(
                'Kunjungi Pusat Bantuan OeyPay di sini !!',
                style: CustomTextStyles.titleItem,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 17,
          ),
        ],
      ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  final String title;

  const CustomListTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.check_circle,
              color: Color(0xff039E8F),
              size: 20,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: CustomTextStyles.titleItem,
            ),
          ),
        ],
      ),
    );
  }
}
