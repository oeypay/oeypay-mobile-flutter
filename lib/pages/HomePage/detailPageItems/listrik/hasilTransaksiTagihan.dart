import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/components/widgetListHasilTransaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/isiUlangDetail.dart';
import 'package:oepay/pages/HomePage/detailPageItems/listrik/listrikDetails.dart';

class HasilTransaksiTagihan extends StatelessWidget {
  const HasilTransaksiTagihan({super.key});

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
                      SizedBox(height: 20),
                      Icon(
                        Icons.check_circle,
                        color: Colors.teal,
                        size: 30,
                      ),
                      Text(
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
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: CustomLis(
                            title: 'Total Transaksi', deskripsi: 'Rp 15.000'),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: CustomLis(
                            title: 'ID Pelanggan', deskripsi: '3213444'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: CustomLis(
                            title: 'Nama Pelanggan', deskripsi: 'Ahmad'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child:
                            CustomLis(title: 'Periode', deskripsi: 'Juli 2024'),
                      ),
                      SizedBox(height: 15),
                      DashedLineExample(),
                      SizedBox(height: 20),
                      Text(
                        'Stand Meter',
                        style: CustomTextStyles.titlesection,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          '0991-45671-1354-4134-1456',
                          style: CustomTextStyles.textButton,
                        ),
                      ),
                      SizedBox(height: 20),
                      CustomMessageContainer(
                        message:
                            'Klik butuh bantuan jika dalam 1x12 jam pembelian belum Anda terima.',
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                HelpSection(),
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
                          builder: (context) => ListrikDetails(),
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
