import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import 'kebijakan_details.dart';
import 'kebijakanPribadi.dart';
import 'tentang_details.dart';

class TentangOepay extends StatelessWidget {
  const TentangOepay({super.key});

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
          'Tentang Aplikasi OePay',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TentangDetails(),
                  ),
                );
              },
              child: const HelpItem(
                icon: Icons.info_outline,
                title: 'Tentang OePay',
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KebijakanDetails(),
                  ),
                );
              },
              child: const HelpItem(
                icon: Icons.policy,
                title: 'Kebijakan Pengaduan',
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KebijakanPribadiDetails(),
                  ),
                );
              },
              child: const HelpItem(
                icon: Icons.security_rounded,
                title: 'Kebijakan Pribadi',
              ),
            ),
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

  const HelpItem({
    super.key,
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
