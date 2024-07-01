import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/styleText.dart';

class CustomGridItem {
  final String images;
  final String title;
  final Color color;
  final VoidCallback onTap;

  CustomGridItem({
    required this.images,
    required this.title,
    required this.color,
    required this.onTap,
    // required CustomGridItem item,
  });
}

class CustomGrid extends StatelessWidget {
  final List<CustomGridItem> items;

  const CustomGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics:
          const NeverScrollableScrollPhysics(), // Disable scrolling for GridView
      shrinkWrap: true, // Ensure GridView takes only the space it needs
      // padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        crossAxisSpacing: 4.0, // Space between columns
        mainAxisSpacing: 4.0, // Space between rows
        // childAspectRatio: 1, // Aspect ratio of each item
      ),
      children: items.map((item) {
        return GestureDetector(
          onTap: item.onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                item.images,
                width: 25,
                color: item.color,
              ),
              const SizedBox(height: 10),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleItem,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
