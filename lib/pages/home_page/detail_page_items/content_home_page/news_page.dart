import 'package:flutter/material.dart';
import 'package:oepay/common/constant/styleText.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rekomendasi Pilihan',
          style: CustomTextStyles.titlesection,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 280.0, // Atur tinggi sesuai kebutuhan
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              PromoCard(
                title: 'Belanja Paket Pulsa Pake OeyPay',
                imageUrl: 'assets/images/promo1.png',
                description: 'Cashback/Diskon s.d. 500rb',
                buttonLabel: 'OVO',
              ),
              SizedBox(width: 16.0),
              PromoCard(
                title: 'Belanja Token Listrik Pake OeyPay',
                imageUrl: 'assets/images/promo2.png',
                description: 'Cashback s.d. 50rb',
                buttonLabel: 'OVO',
              ),
              SizedBox(width: 16.0),
              PromoCard(
                title: 'Jajan Belanja Pulsa Pake OeyPay',
                imageUrl: 'assets/images/promo3.png',
                description: 'Cashback s.d. 50rb',
                buttonLabel: 'OVO',
              ),
              SizedBox(width: 16.0),
              PromoCard(
                title: 'Jajan Voucher Game Hemat Pake OeyPay',
                imageUrl: 'assets/images/promo4.png',
                description: 'Cashback s.d. 50rb',
                buttonLabel: 'OVO',
              ),
              SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}

class PromoCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String buttonLabel;

  const PromoCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0, // Atur lebar sesuai kebutuhan
      // height: 350.0, // Atur tinggi sesuai kebutuhan
      // padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              // width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Text(
              title,
              style: CustomTextStyles.titlesection,
              softWrap: true,
            ),
          ),
          // const SizedBox(height: 8.0),
          // Padding(
          //   padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          //   child: Text(
          //     description,
          //     style: const TextStyle(fontSize: 14.0),
          //     softWrap: true,
          //   ),
          // ),
        ],
      ),
    );
  }
}
