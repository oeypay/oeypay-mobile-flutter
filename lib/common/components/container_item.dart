import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/styleText.dart';

class CustomGridItemPage {
  final String images;
  final String title;
  final Color color;
  final VoidCallback onTap;

  CustomGridItemPage({
    required this.images,
    required this.title,
    required this.color,
    required this.onTap,
  });
}

class CustomGridItemWidget extends StatelessWidget {
  final CustomGridItemPage item;

  const CustomGridItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            item.images,
            width: 25,
            height: 25,
            color: item.color,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleItem,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomGridPage extends StatelessWidget {
  final List<CustomGridItemPage> items;
  final String sectionTitle;

  const CustomGridPage(
      {super.key, required this.items, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(sectionTitle, style: CustomTextStyles.titlesection),
        const SizedBox(height: 10),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 9.0,
          // mainAxisSpacing: 1.0,
          children:
              items.map((item) => CustomGridItemWidget(item: item)).toList(),
        ),
      ],
    );
  }
}
