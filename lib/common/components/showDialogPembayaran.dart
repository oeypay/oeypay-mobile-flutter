import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/constant/colors.dart';

void showCustomBottomSheet({
  required BuildContext context,
  required String noHp,
  required String pulsaData,
  required String transaksi,
  required String hargaPulsa,
  required String totalPembayaran,
  required String saldoOeyPay,
  required VoidCallback onPayPressed,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ColorName.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            const Text(
              'Informasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 16.0),
            DashedLineExample(),
            SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'No Hp:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  noHp,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Telkomsel:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  pulsaData,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(height: 10),
            DashedLineExample(),
            SizedBox(height: 10),
            const Text(
              'Pembayaran',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Transaksi:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  transaksi,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Harga:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  hargaPulsa,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                const Text(
                  'Total Pembayaran:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  totalPembayaran,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            DashedLineExample(),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Text(
                  'Saldo OeyPay Anda:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  saldoOeyPay,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonCustom.filled(
                  height: 40,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: 'Tutup',
                  color: ColorName.white,
                  textColor: Colors.black,
                ),
                ButtonCustom.filled(
                  height: 40,
                  onPressed: onPayPressed,
                  label: 'Bayar',
                  color: ColorName.yellowColor,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
