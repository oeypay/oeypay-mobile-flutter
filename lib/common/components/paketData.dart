import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/showDialogPembayaran.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class PaketData extends StatefulWidget {
  const PaketData({super.key});

  @override
  State<PaketData> createState() => _PaketDataState();
}

class _PaketDataState extends State<PaketData> {
  bool isPaketDataSelected = false;
  int? selectedPulsaOption;

  void toggleSelection() {
    setState(() {
      isPaketDataSelected = !isPaketDataSelected;
      selectedPulsaOption = null; // Reset selection when switching tabs
    });
  }

  void selectPulsaOption(int option) {
    setState(() {
      selectedPulsaOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          noHp: '085676445776',
          pulsaData: '10GB + 20GB',
          transaksi: 'Rp.0',
          hargaPulsa: 'Rp.15.000',
          totalPembayaran: 'Rp.15.000',
          saldoOeyPay: 'Rp.20.000',
          onPayPressed: () {
            AwesomeDialog(
              btnOkColor: Colors.blue,
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Berhasil',
              desc: 'Pulsa selesai di bayar',
              // btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
          }),
      child: Container(
        width: double.infinity,
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Paket Data 50GB + 20GB',
              style: CustomTextStyles.textButton,
            ),
            SizedBox(height: 20),
            Text(
              'Paket Data 50GB Kuota Utama + 20GB',
              style: CustomTextStyles.titleProfil,
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Single Zone',
                style: CustomTextStyles.textZone,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Harga Rp.100.000',
                  style: CustomTextStyles.titlesection,
                ),
                Text(
                  'Aktif 30 hari',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
