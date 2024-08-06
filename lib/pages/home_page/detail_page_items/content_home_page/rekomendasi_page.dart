import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class RekomendasiPage extends StatefulWidget {
  const RekomendasiPage({super.key});

  @override
  State<RekomendasiPage> createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kenali OeyPay Lebih Dekat',
          style: CustomTextStyles.titlesection,
        ),
        const SizedBox(height: 8.0),
        const Text(
          'Biar makin akrab, yuk cek tips berikut!',
          style: TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 16.0),

        // Tips Cards
        const Row(
          children: [
            Expanded(
              child: TipsCard(
                title: 'Keuntungan Pakai OeyPay',
                imageUrl: 'assets/images/promo1.png',
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: TipsCard(
                title: 'Cara Top Up OeyPay Cash',
                imageUrl: 'assets/images/promo2.png',
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: TipsCard(
                title: 'Upgrade Ke OeyPay Premier',
                imageUrl: 'assets/images/promo3.png',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TipsCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TipsCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(imageUrl)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: CustomTextStyles.titlesection,
            ),
          ),
        ],
      ),
    );
  }
}
