import 'package:flutter/material.dart';
import 'package:oepay/common/components/containerItem.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/detail_item_lainnya.dart';

class Itemlainnyapage extends StatelessWidget {
  const Itemlainnyapage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<CustomGridItemPage> gridItems = [
    //   CustomGridItemPage(
    //     images: 'assets/icons/expense.svg',
    //     title: 'Transfer',
    //     color: Colors.red,
    //     onTap: () {
    //       print('Item 1 tapped');
    //     },
    //   ),
    //   CustomGridItemPage(
    //     images: 'assets/icons/bank.svg',
    //     title: 'Kirim ke Bank',
    //     color: Colors.green,
    //     onTap: () {
    //       print('Item 2 tapped');
    //     },
    //   ),
    //   CustomGridItemPage(
    //     images: 'assets/icons/deposit.svg',
    //     title: 'Penarikan',
    //     color: Colors.blue,
    //     onTap: () {
    //       print('Item 3 tapped');
    //     },
    //   ),
    //   // CustomGridItemPage(
    //   //   images: 'assets/icons/send-money-smartphone.svg',
    //   //   title: 'Tarik Saldo',
    //   //   color: Colors.orange,
    //   //   onTap: () {
    //   //     print('Item 4 tapped');
    //   //   },
    //   // ),
    // ];

    final List<CustomGridItemPage> layananDigital = [
      CustomGridItemPage(
        images: 'assets/icons/wallet-arrow.svg',
        title: 'Kirim Ke E-Wallet',
        color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/wifi-alt.svg',
        title: 'Pulsa dan Data',
        color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/sensor-on.svg',
        title: 'Uang Elektronik',
        color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/gamepad.svg',
        title: 'Item Digital',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> tagihan = [
      CustomGridItemPage(
        images: 'assets/icons/lightbulb.svg',
        title: 'PLN',
        color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/calculator-bill.svg',
        title: 'Tagihan Saya',
        color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/smart-home.svg',
        title: 'Internet & TV digital',
        color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/raindrops.svg',
        title: 'Air',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/hospital.svg',
        title: 'BPJS Kesehatan',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> pembayaran = [
      CustomGridItemPage(
        images: 'assets/icons/school.svg',
        title: 'Pendidikan',
        color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/calendar-clock.svg',
        title: 'Cicilan',
        color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/hands-heart.svg',
        title: 'Donasi',
        color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/shopping-cart.svg',
        title: 'Belanja Online',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/credit-card.svg',
        title: 'Kartu Kredit',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    final List<CustomGridItemPage> layananPemerintah = [
      CustomGridItemPage(
        images: 'assets/icons/salary-alt.svg',
        title: 'Pajak Daerah',
        color: Colors.red,
        onTap: () {
          print('Item 1 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/camera-cctv.svg',
        title: 'E-tilang',
        color: Colors.green,
        onTap: () {
          print('Item 2 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/credit-card-buyer.svg',
        title: 'SIM',
        color: Colors.blue,
        onTap: () {
          print('Item 3 tapped');
        },
      ),
      CustomGridItemPage(
        images: 'assets/icons/passport.svg',
        title: 'Passport',
        color: Colors.orange,
        onTap: () {
          print('Item 4 tapped');
        },
      ),
    ];

    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: const Text('Semua Layanan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              // CustomGridPage(
              //   sectionTitle: 'Transfer',
              //   items: gridItems
              //       .map((item) => CustomGridItemPage(
              //             color: ColorName.green,
              //             images: item.images,
              //             title: item.title,
              //             onTap: () {
              //               Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                   builder: (context) =>
              //                       ItemDetailPage(item: item),
              //                 ),
              //               );
              //             },
              //           ))
              //       .toList(),
              // ),
              // Divider(),
              CustomGridPage(
                sectionTitle: 'Layanan Digital',
                items: layananDigital
                    .map((item) => CustomGridItemPage(
                          color: Colors.pink,
                          images: item.images,
                          title: item.title,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailPage(item: item),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              Divider(),
              CustomGridPage(
                sectionTitle: 'Pembayaran',
                items: pembayaran
                    .map((item) => CustomGridItemPage(
                          color: Colors.blue,
                          images: item.images,
                          title: item.title,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailPage(item: item),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              Divider(),
              CustomGridPage(
                sectionTitle: 'Tagihan',
                items: tagihan
                    .map((item) => CustomGridItemPage(
                          color: Colors.amber,
                          images: item.images,
                          title: item.title,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailPage(item: item),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
              Divider(),
              CustomGridPage(
                sectionTitle: 'Layanan Pemerintah',
                items: layananPemerintah
                    .map((item) => CustomGridItemPage(
                          color: Colors.cyan,
                          images: item.images,
                          title: item.title,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailPage(item: item),
                              ),
                            );
                          },
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
