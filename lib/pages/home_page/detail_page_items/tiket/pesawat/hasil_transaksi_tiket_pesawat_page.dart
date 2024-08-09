import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/components/widget_payment_tiket.dart';
import 'package:oepay/common/components/widget_rincian_data.dart';
import 'package:oepay/common/components/widget_value_rincian_data.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';
import 'package:oepay/pages/home_page/detail_page_items/tiket/pesawat/lihat_tiket_pesawat_pages.dart';
import 'show_modal_penerbangan_page.dart';

class HasiltransaksitiketPesawat extends StatelessWidget {
  const HasiltransaksitiketPesawat({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle text = GoogleFonts.poppins(
        fontSize: 14, color: Colors.lime.shade900, fontWeight: FontWeight.w500);

    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Stack(
          children: [
            Widgetappbar(),
            Column(
              children: [
                CustomContainerCard(
                  color: Colors.blueGrey.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.teal,
                          size: 30,
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Transaksi Berhasil',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        color: ColorName.yellowColor,
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'E-Tiket Keberangkatan',
                              style: CustomTextStyles.titlesection,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LihatETiketPesawat(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 51, 46, 0),
                                ),
                                child: Text(
                                  'Lihat e-tiket',
                                  style: CustomTextStyles.textZone,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
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
                      ),
                      RouteDetail(
                        icon: Icons.train,
                        route: 'Bandung (BD) > Pasar Senen (PS)',
                        date: 'Sab, 8 Jul 2024',
                        timeDetails: '12.00 - 7j 30m - 16.00',
                        ticketClass: 'Langsung . Ekonomi',
                        onViewDetails: () {
                          showBarModalBottomSheet(
                            expand: false,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => const ShowModalPenerbangan(),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.phone_android),
                        title: Text(
                          'Rincian Kontak',
                          style: CustomTextStyles.titlesection,
                        ),
                      ),
                      const Divider(),
                      const ValueRincianData(
                        nama: 'Ahmad Kardawi',
                        data1: 'Email: ahmad@gmail.com',
                        data2: 'No Hp: 089787576565',
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 8,
                        width: double.infinity,
                        color: Colors.grey.shade200,
                      ),
                      ListTile(
                        leading: const Icon(Icons.group),
                        title: Text(
                          'Rincian Penumpang',
                          style: CustomTextStyles.titlesection,
                        ),
                      ),
                      const Divider(),
                      const ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      const SizedBox(height: 10),
                      const Divider(),
                      const ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DetailPembayaranWidget(
                    colorBorder: Colors.blueGrey.shade200,
                    balanceLabel: 'Sumber Dana (Saldo OeyPay)',
                    balanceValue: 'Rp. 1000.000',
                    colorTotal: ColorName.yellowSmoth,
                    totalOrderValue: 'Rp. 900.000',
                    voucher: '-Rp. 5000',
                    totalPaymentValue: 'Rp. 900.000',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: ButtonCustom.filled(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {},
                    label: 'Tutup',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
