import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/show_dialog_pembayaran.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/components/widget_item_topUp.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import '../metodeLainnya/metode_lainnya.dart';

class Virtualaccountpages extends StatefulWidget {
  const Virtualaccountpages({super.key});

  @override
  State<Virtualaccountpages> createState() => _VirtualaccountpagesState();
}

class _VirtualaccountpagesState extends State<Virtualaccountpages> {
  bool isVirtualAccount = false;

  void toggleSelection() {
    setState(() {
      isVirtualAccount = !isVirtualAccount;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/bca.svg',
          width: 50,
        ),
        'title': 'BANK BCA',
        'tag': 'Instan',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/bca.svg',
          virtualAccountTitle: 'Nomor Virtual Account BCA',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/mandiri.svg',
          width: 50,
        ),
        'title': 'BANK MANDIRI',
        'tag': '',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/mandiri.svg',
          virtualAccountTitle: 'Nomor Virtual Account MANDIRI',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/panin.svg',
          width: 50,
        ),
        'title': 'BANK PANIN',
        'tag': '',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/panin.svg',
          virtualAccountTitle: 'Nomor Virtual Account PANIN',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/bni.svg',
          width: 50,
        ),
        'title': 'BANK NEGARA INDONESIA',
        'tag': '',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/bni.svg',
          virtualAccountTitle: 'Nomor Virtual Account BNI',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/bri.svg',
          width: 50,
        ),
        'title': 'BANK RAKYAT INDONESIA',
        'tag': '',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/bri.svg',
          virtualAccountTitle: 'Nomor Virtual Account BRI',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/Bank/permata.svg',
          width: 50,
        ),
        'title': 'BANK PERMATA',
        'tag': '',
        'action': 'show',
        'page': CustomShowModalBottomSheet(
          iconik: 'assets/icons/Bank/permata.svg',
          virtualAccountTitle: 'Nomor Virtual Account PERMATA',
          virtualAccountNumber: '8883 82392 9823 3882',
          topUpTitle: 'Cara Top Up',
          topUpSteps: [
            'Login ke akun m-BCA Anda',
            'Pilih menu m-Transfer',
            'Pilih menu BCA Virtual Account',
            'Masukan 329482 + Nomor ponsel Anda (329482 08xx-xxxx-xxxx)',
            'Masukan Nominal Top Up',
            'Ikuti instruksi untuk menyelesaikan transaksi',
          ],
        ),
      },
    ];

    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: ColorName.yellowColor,
        title: Text('Top Up'),
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          Column(
            children: [
              // Row(
              //   children: [
              //     IconButton(
              //       onPressed: () {},
              //       icon: Icon(Icons.arrow_back),
              //     ),
              //     SizedBox(width: 10),
              //     Text('Top Up'),
              //   ],
              // ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 70),
                  Icon(
                    Icons.wallet,
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saldo'),
                      Text(
                        'Rp. 5.000',
                        style: CustomTextStyles.titlesection,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      onPressed: () {
                        if (isVirtualAccount) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: !isVirtualAccount
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: !isVirtualAccount
                                ? Colors.white
                                : ColorName.light,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Virtual Account',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!isVirtualAccount) toggleSelection();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isVirtualAccount
                            ? ColorName.yellowColor
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: isVirtualAccount
                                ? Colors.white
                                : ColorName.yellowSmoth,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Metode Lainnya',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              if (!isVirtualAccount)
                Wrap(
                  // spacing: 10.0,
                  // runSpacing: 10.0,
                  children: [
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   physics: NeverScrollableScrollPhysics(),
                    //   itemCount: items.length,
                    //   itemBuilder: (context, index) {
                    //     return Widgetitemtopup(item: items[index]);
                    //   },
                    // ),
                    Column(
                      children: items
                          .map((item) => Widgetitemtopup(item: item))
                          .toList(),
                    ),
                  ],
                )
              else
                Wrap(
                  children: [
                    TopUpScreen(),
                  ],
                )
            ],
          ),
        ],
      ),
    );
  }
}
