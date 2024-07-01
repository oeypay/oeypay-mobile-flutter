import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Top Up',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              'Silahkan Pilih Metode Pembayaranmu',
              style: CustomTextStyles.titleProfil,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  final items = [
                    {
                      'icon': const Icon(Icons.credit_card),
                      'title': 'BCA OneKlik',
                      'tag': 'Instan',
                    },
                    {
                      'icon': const Icon(Icons.credit_card),
                      'title': 'Alfamart, Alfamidi, Lawson, Dan+Dan',
                      'tag': 'NEW',
                    },
                    {
                      'icon': const Icon(Icons.credit_card),
                      'title': 'Indomaret',
                      'tag': '',
                    },
                    {
                      'icon': const Icon(Icons.credit_card),
                      'title': 'Debit Visa / Mastercard',
                      'tag': '',
                    },
                    {
                      'icon': const Icon(Icons.atm),
                      'title': 'ATM',
                      'tag': '',
                    },
                    {
                      'icon': const Icon(Icons.phone_android),
                      'title': 'Internet / Mobile Banking',
                      'tag': '',
                    },
                    {
                      'icon': const Icon(Icons.directions_car),
                      'title': 'Pengemudi Grab',
                      'tag': '',
                    },
                    {
                      'icon': const Icon(Icons.storefront),
                      'title': 'Merchant / Mitra OVO',
                      'tag': '',
                    },
                  ];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: InkWell(
                      onTap: () {
                        // Handle item tap
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            items[index]['icon'] as Widget,
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]['title'] as String,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (items[index]['tag'] != '')
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                // decoration: BoxDecoration(
                                //   color: Colors.blue,
                                //   borderRadius: BorderRadius.circular(20),
                                // ),
                                child: Text(
                                  items[index]['tag'] as String,
                                  style: TextStyle(
                                      color: (items[index]['tag'] as String) ==
                                              'NEW'
                                          ? Colors.red
                                          : (items[index]['tag'] as String) ==
                                                  'Instan'
                                              ? Colors.blue
                                              : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            const SizedBox(width: 16),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
