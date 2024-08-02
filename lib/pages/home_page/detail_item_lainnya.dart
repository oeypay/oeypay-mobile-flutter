import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';

import '../../common/components/container_item.dart';

class ItemDetailPage extends StatelessWidget {
  final CustomGridItemPage item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final TextEditingController formController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(item.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                item.images,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Isi Form untuk ${item.title}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: formController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Detail',
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ButtonCustom.filled(
                  onPressed: () {},
                  label: 'Selesai',
                  color: Colors.amber,
                  textColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
