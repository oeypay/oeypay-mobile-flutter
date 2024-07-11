import 'package:flutter/material.dart';
import 'package:oepay/common/components/containerListHarga.dart';
import 'package:oepay/common/components/showDialogPembayaran.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/hasilTransaksiPulsa.dart';
import 'package:oepay/pages/HomePage/detailPageItems/listrik/hasilTransaksiListrik.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasiPenarikanOtp.dart';

class TagihanListrik extends StatelessWidget {
  const TagihanListrik({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          nomorMeter: 091391290198919012,
          iDPelanggan: 334124231,
          namaPelanggan: 'Ahmad',
          titleHarga: 'Token Listrik',
          tarifDaya: 'R1M/900VA',
          hargaPrice: 'Rp 20.000',
          transaksi: 'Rp.0',
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
                        builder: (context) => HasilTransaksiListrik(),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
      child: Container(),
    );
  }
}
