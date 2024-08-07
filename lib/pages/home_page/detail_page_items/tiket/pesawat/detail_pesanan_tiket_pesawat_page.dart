import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/widget_payment_tiket.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import '../../../../../common/components/widgte_detail_pesanan_tiket.dart';
import '../../penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'hasil_transaksi_tiket_pesawat_page.dart';

class DetailPesananTiketPesawatPage extends StatelessWidget {
  const DetailPesananTiketPesawatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Detail Pesanan',
          style: CustomTextStyles.titleProfilApp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Column(
        children: [
          RincianDetailPesananContent(
            icon: Icons.flight,
            flightRoute: 'Jakarta (CGK) > Surabaya (SUB)',
            flightDate: 'Sab, 8 Jul 2024 12.00 - 16.00',
            flightType: 'Langsung . Ekonomi',
            voucherIconPath: 'assets/icons/kupon.svg',
            voucherHintText: 'Gunakan / Masukkan Kode',
            paymentIconPath: 'assets/icons/dompet.svg',
            balanceLabel: 'Saldo OeyPay',
            balanceValue: 'Rp 120.000.000',
            totalOrderLabel: 'Total Pesanan',
            // totalOrderValue: 'Rp 900.000',
            // totalPaymentLabel: 'Total Pembayaran',
            // totalPaymentValue: 'Rp 900.000',
          ),
          DetailPembayaranWidget(
            colorBorder: Colors.transparent,
            balanceLabel: 'Saldo OeyPay',
            balanceValue: 'Rp. 120.000.000',
            totalOrderValue: 'Rp. 900.000',
            totalPaymentValue: 'Rp. 900.000',
            colorTotal: Colors.white,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ButtonCustom.filled(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Konfirmasipenarikanotp(onConfirmation: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HasiltransaksitiketPesawat(),
                    ),
                  );
                }),
              ),
            );
          },
          label: 'Bayar Sekarang',
          color: ColorName.yellowColor,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
