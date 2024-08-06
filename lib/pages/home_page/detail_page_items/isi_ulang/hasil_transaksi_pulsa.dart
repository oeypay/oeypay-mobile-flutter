import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/components/widget_list_hasil_transaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import 'isi_ulang_detail.dart';

class Hasiltransaksipulsa extends StatelessWidget {
  const Hasiltransaksipulsa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          Column(
            children: [
              CustomContainerCard(
                color: Colors.blueGrey.shade200,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Icon(
                      Icons.check_circle,
                      color: Colors.teal,
                      size: 30,
                    ),
                    const Text(
                      'Transaksi Berhasil',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Image.asset(''),
                    const Icon(Icons.person_pin),
                    Text(
                      'Telkomsel',
                      style: CustomTextStyles.textButton,
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: CustomLis(
                          title: 'Total Transaksi', deskripsi: 'Rp 15.000'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: CustomLis(
                          title: 'Nomo Ponsel', deskripsi: '0998867575'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: CustomLis(
                          title: 'Nominal Voucher', deskripsi: 'Rp 15.000'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: CustomLis(
                          title: 'Biaya Transaksi', deskripsi: 'Rp 0'),
                    ),
                    const SizedBox(height: 15),
                    const CustomMessageContainer(
                      message:
                          'Klik butuh bantuan jika dalam 1x12 jam pembelian belum Anda terima.',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const HelpSection(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ButtonCustom.filled(
                  height: 40,
                  width: double.infinity,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PulsaScreen(),
                      ),
                    );
                  },
                  label: 'Tutup',
                  color: ColorName.yellowColor,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
