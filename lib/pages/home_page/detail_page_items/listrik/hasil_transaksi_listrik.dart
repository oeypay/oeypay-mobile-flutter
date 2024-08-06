import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/garis_putus.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/components/widget_list_hasil_transaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import 'listrik_details.dart';

class HasilTransaksiListrik extends StatelessWidget {
  const HasilTransaksiListrik({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
      ),
      body: SingleChildScrollView(
        child: Stack(
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
                      // SizedBox(height: 20),
                      Image.asset(
                        'assets/icons/pln.png',
                        width: 50,
                      ),
                      // Icon(Icons.person_pin),
                      Text(
                        'Token Listrik',
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
                            title: 'Nomo Meter', deskripsi: '980998867575'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: CustomLis(
                            title: 'ID Pelanggan', deskripsi: '3213444'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: CustomLis(
                            title: 'Nama Pelanggan', deskripsi: 'Ahmad'),
                      ),
                      const SizedBox(height: 15),
                      const DashedLineExample(),
                      const SizedBox(height: 20),
                      Text(
                        'Strom Tokens',
                        style: CustomTextStyles.titlesection,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          '0991-45671-1354-4134-1456',
                          style: CustomTextStyles.textButton,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomMessageContainer(
                        message:
                            'Klik butuh bantuan jika dalam 1x12 jam pembelian belum Anda terima.',
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const HelpSection(),
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ButtonCustom.filled(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListrikDetails(),
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
      ),
    );
  }
}
