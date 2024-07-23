import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/listrik/hasilTransaksiListrik.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasiPenarikanOtp.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/hasilTransaksiTiket.dart';

class RincianDetailPesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _voucherController = TextEditingController();
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
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
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
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.flight, color: Colors.black),
                            SizedBox(width: 20),
                            Text(
                              'Jakarta (CGK) > Surabaya (SUB)',
                              style: CustomTextStyles.titlesection,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sab, 8 Jul 2024 12.00 - 16.00',
                          style: textStyle,
                        ),
                        SizedBox(height: 4),
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
                        Transform.rotate(
                          angle: 1.57,
                          child: SvgPicture.asset(
                            'assets/icons/ticket (1).svg',
                            width: 20,
                            color: Colors.red.shade600,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Voucher',
                          style: CustomTextStyles.titlesection,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: Container(
                            width: 200,
                            child: TextFormField(
                              controller: _voucherController,
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
                    leading: Icon(Icons.payment, color: Colors.black),
                    title: Text(
                      'Detail Pembayaran',
                      style: CustomTextStyles.titlesection,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 10),
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
                  SizedBox(height: 8),
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
                  SizedBox(height: 16),
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
                      builder: (context) => HasiltransaksitiketPesawat(),
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
