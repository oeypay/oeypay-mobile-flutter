import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/porfilScreen/FAQdetails.dart';
import 'package:oepay/pages/HomePage/porfilScreen/GuideDetails.dart';

class PusatBantuan extends StatelessWidget {
  const PusatBantuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Pusat Bantuan',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Help desk for the OePay App',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FaqScreen(),
                  ),
                );
              },
              child: const HelpItem(
                icon: Icons.question_mark,
                title: 'Frequently Asked Questions',
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GuidDetails(),
                  ),
                );
              },
              child: const HelpItem(
                icon: Icons.book_outlined,
                title: 'Guide to OePay Provider App',
              ),
            ),
            const SizedBox(height: 10.0),
            // HelpItem(
            //   icon: Icons.chat_bubble,
            //   title: 'Report an Issue',
            // ),
          ],
        ),
      ),
    );
  }
}

class HelpItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const HelpItem({super.key, 
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(icon, color: Colors.teal),
              const SizedBox(width: 16.0),
              Text(
                title,
                style: CustomTextStyles.titleProfil,
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
