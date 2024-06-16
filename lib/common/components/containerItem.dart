import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class CustomGridItemPage {
  final String images;
  final String title;
  // final Color color;
  final VoidCallback onTap;

  CustomGridItemPage({
    required this.images,
    required this.title,
    // required this.color,
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
      child: Container(
        // margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              item.images,
              width: 38,
              height: 38,
              // color: item.color,
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
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(sectionTitle, style: CustomTextStyles.titlesection),
          const SizedBox(height: 15),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 4,
            crossAxisSpacing: 5.0,
            // mainAxisSpacing: 5.0,
            children:
                items.map((item) => CustomGridItemWidget(item: item)).toList(),
          ),
        ],
      ),
    );
  }
}
