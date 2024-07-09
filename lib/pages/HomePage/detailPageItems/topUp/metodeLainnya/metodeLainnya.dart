import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/widgetItemTopUp.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/metodeLainnya/alfamart/alfamartDetail.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/menunguPembayaran.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/metodeLainnya/atm/atm.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/metodeLainnya/indomart/indomartDetail.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/metodeLainnya/merchant/merchant.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/metodeLainnya/visaMaster/visaMaster.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'icon': SvgPicture.asset(
          'assets/icons/provider/alfa.svg',
          width: 50,
        ),
        'title': 'Alfmart, Alfamidi, Lawson',
        'tag': '',
        'action': 'page',
        'page': Alfamartdetail(),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/provider/indomart.svg',
          width: 50,
        ),
        'title': 'Indomaret',
        'tag': '',
        'action': 'page',
        'page': Indomartdetail(),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/provider/visa-master.svg',
          width: 50,
        ),
        'title': 'Debit Visa / Master Card',
        'tag': '',
        'action': 'page',
        'page': Visamaster(),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/provider/atm.svg',
          width: 50,
        ),
        'title': 'ATM',
        'tag': '',
        'action': 'page',
        'page': AtmPage(),
      },
      {
        'icon': SvgPicture.asset(
          'assets/icons/provider/merchan.svg',
          width: 50,
        ),
        'title': 'Merchant / Mitra OeyPay',
        'tag': '',
        'action': 'page',
        'page': MerchantPage(),
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Menungupembayaran(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.amber),
              color: ColorName.yellowColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/icons/Group 16.png', width: 40),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Menunggu Pembayaran Top Up Indomaret',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'paling lambat 05 Juli, 09.42 WITA',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: items.map((item) => Widgetitemtopup(item: item)).toList(),
        ),
      ],
    );
  }
}
