import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import '../../penarikan/bca/konfirmasi_penarikan_otp.dart';
import 'hasilTransaksi_tiket_pesawat.dart';

class RincianDetailPesananPage extends StatelessWidget {
  const RincianDetailPesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController voucherController = TextEditingController();
    TextStyle textStyle = GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.lime.shade900,
      fontWeight: FontWeight.w500,
    );

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: ColorName.yellowSmoth,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.flight, color: Colors.black),
                            const SizedBox(width: 20),
                            Text(
                              'Jakarta (CGK) > Surabaya (SUB)',
                              style: CustomTextStyles.titlesection,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Sab, 8 Jul 2024 12.00 - 16.00',
                          style: textStyle,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Langsung . Ekonomi',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.lime.shade900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey.shade300),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 20),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/kupon.svg',
                          width: 20,
                          color: Colors.red.shade600,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'Voucher',
                          style: CustomTextStyles.titlesection,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: SizedBox(
                            width: 200,
                            child: TextFormField(
                              controller: voucherController,
                              decoration: InputDecoration(
                                hintText: 'Gunakan / Masukkan Kode',
                                hintStyle: GoogleFonts.poppins(fontSize: 12),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 8,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/dompet.svg',
                      width: 20,
                    ),
                    title: Text(
                      'Detail Pembayaran',
                      style: CustomTextStyles.titlesection,
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Saldo OeyPay',
                          style: CustomTextStyles.titleProfil,
                        ),
                        Text(
                          'Rp 120.000.000',
                          style: CustomTextStyles.titleProfil,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pesanan',
                          style: CustomTextStyles.titleProfil,
                        ),
                        Text(
                          'Rp 900.000',
                          style: CustomTextStyles.titleProfil,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 8,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          'Rp 900.000',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
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
