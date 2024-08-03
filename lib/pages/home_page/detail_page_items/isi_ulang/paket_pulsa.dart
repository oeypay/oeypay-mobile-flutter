import 'package:flutter/material.dart';
import 'package:oepay/common/components/container_list_harga.dart';
import 'package:oepay/common/components/show_dialog_pembayaran.dart';

import '../penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'hasil_transaksi_pulsa.dart';

class Paketpulsa extends StatelessWidget {
  const Paketpulsa({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          titleHarga: 'Harga',
          noHp: '085676445776',
          pulsaData: '10.000',
          transaksi: 'Rp.0',
          hargaPrice: 'Rp.15.000',
          totalPembayaran: 'Rp.15.000',
          saldoOeyPay: 'Rp.20.000',
          onPayPressed: () {
            // customShowDialog(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Konfirmasipenarikanotp(
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Hasiltransaksipulsa(),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
      child: Containerlistharga(
        price: '10.000',
        harga: 'Harga',
        totalHarga: 'Rp 12.000',
        discount: '10%',
        discountedPrice: 'Rp 7.000',
      ),
    );
  }
}
