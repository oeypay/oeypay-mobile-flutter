import 'package:flutter/material.dart';
import 'package:oepay/common/components/containerItem.dart';
import 'package:oepay/common/components/gridComponents.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/detailItemLainnya.dart';

class Itemlainnyapage extends StatelessWidget {
  const Itemlainnyapage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomGridItemPage> gridItems = [
      CustomGridItemPage(
        images: 'assets/icons/icons8-cheque-48.png',
        title: 'Berbagi',
        // color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/merchant.png',
        title: 'Kirim ke Bank',
        // color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/icons8-cash-100.png',
        title: 'Tarik Tunai',
        // color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/payment.png',
        title: 'Tarik Saldo',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> layananDigital = [
      CustomGridItemPage(
        images: 'assets/icons/wallet.png',
        title: 'Kirim Ke E-Wallet',
        // color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/wi-fi.png',
        title: 'Pulsa dan Data',
        // color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/e-money.png',
        title: 'Uang Elektronik',
        // color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/game.png',
        title: 'Item Digital',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> tagihan = [
      CustomGridItemPage(
        images: 'assets/icons/electric.png',
        title: 'PLN',
        // color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/icons8-list-64.png',
        title: 'Tagihan Saya',
        // color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/internet.png',
        title: 'Internet & TV digital',
        // color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/icons8-water-64.png',
        title: 'Air',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/insurance.png',
        title: 'BPJS Kesehatan',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> pembayaran = [
      CustomGridItemPage(
        images: 'assets/icons/icons8-graduation.png',
        title: 'Pendidikan',
        // color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/icons8-date-64.png',
        title: 'Cicilan',
        // color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/donation.png',
        title: 'Donasi',
        // color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/e-commerce.png',
        title: 'Belanja Online',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/icons8-credit-card-64.png',
        title: 'Kartu Kredit',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> layananPemerintah = [
      CustomGridItemPage(
        images: 'assets/icons/accounting.png',
        title: 'Pajak Daerah',
        // color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/cctv.png',
        title: 'E-tilang',
        // color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/sim.png',
        title: 'SIM',
        // color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/visa.png',
        title: 'Passport',
        // color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Semua Layanan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text(
            //     'Transfer',
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // CustomGridPage(items: gridItems),
            CustomGridPage(
              sectionTitle: 'Transfer',
              items: gridItems
                  .map((item) => CustomGridItemPage(
                        images: item.images,
                        title: item.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: item),
                            ),
                          );
                        },
                      ))
                  .toList(),
            ),
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text(
            //     'Layanan Digital',
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            CustomGridPage(
              sectionTitle: 'Layanan Digital',
              items: layananDigital
                  .map((item) => CustomGridItemPage(
                        images: item.images,
                        title: item.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: item),
                            ),
                          );
                        },
                      ))
                  .toList(),
            ),
            // CustomGridPage(items: layananDigital),
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text(
            //     'Pembayaran',
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            CustomGridPage(
              sectionTitle: 'Pembayaran',
              items: pembayaran
                  .map((item) => CustomGridItemPage(
                        images: item.images,
                        title: item.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: item),
                            ),
                          );
                        },
                      ))
                  .toList(),
            ),
            // CustomGridPage(items: pembayaran),
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text(
            //     'Tagihan',
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            CustomGridPage(
              sectionTitle: 'Tagihan',
              items: tagihan
                  .map((item) => CustomGridItemPage(
                        images: item.images,
                        title: item.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: item),
                            ),
                          );
                        },
                      ))
                  .toList(),
            ),
            // CustomGridPage(items: tagihan),
            // const Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10),
            //   child: Text(
            //     '',
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            CustomGridPage(
              sectionTitle: 'Layanan Pemerintah',
              items: layananPemerintah
                  .map((item) => CustomGridItemPage(
                        images: item.images,
                        title: item.title,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemDetailPage(item: item),
                            ),
                          );
                        },
                      ))
                  .toList(),
            ),
            // CustomGridPage(items: layananPemerintah),
          ],
        ),
      ),
    );

    //  return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Custom Grid Example'),
    //     ),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           CustomGridPage(
    //             sectionTitle: 'Grid Items',
    //             items: gridItems.map((item) => CustomGridItemPage(
    //               images: item.images,
    //               title: item.title,
    //               onTap: () {
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => ItemDetailPage(item: item),
    //                   ),
    //                 );
    //               },
    //             )).toList(),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
