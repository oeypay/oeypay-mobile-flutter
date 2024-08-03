import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/common/constant/variables.dart';

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
  final String? images, category;
  final String? title;
  final Color? color;
  final VoidCallback? onTap;

  const CustomGridItemWidget(
      {super.key,
      this.color,
      this.images,
      this.onTap,
      this.title,
      this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (images!.endsWith('.svg'))
            SvgPicture.network(
              images ?? defaultFotoSvg,
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(
                  category == 'Tagihan'
                      ? Colors.amber
                      : category == 'Pembayaran'
                          ? Colors.blue
                          : category == 'Layanan Digital'
                              ? Colors.pink
                              : category == 'Layanan Pemerintah'
                                  ? Colors.cyan
                                  : Colors.black,
                  BlendMode.srcIn),
            )
          else
            Image.network(
              images ?? defaultFoto,
              width: 25,
              height: 25,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(
              title ?? '',
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
  final List<Widget>? items;
  final String? sectionTitle;

  const CustomGridPage({super.key, this.items, this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(sectionTitle ?? '', style: CustomTextStyles.titlesection),
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 9.0,
          children: items ?? [],
          // children:
          //     items.map((item) => CustomGridItemWidget(item: item)).toList(),
        ),
        Divider(),
      ],
    );
  }
}
