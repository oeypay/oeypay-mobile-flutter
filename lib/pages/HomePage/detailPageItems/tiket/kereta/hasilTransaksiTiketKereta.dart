import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/components/widgetRincianData.dart';
import 'package:oepay/common/components/widgetValueRincianData.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/showModalPenerbangan.dart';

class HasiltransaksitiketKereta extends StatelessWidget {
  const HasiltransaksitiketKereta({super.key});

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
          icon: Icon(Icons.close),
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
                      SizedBox(height: 20),
                      Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.teal,
                          size: 30,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Transaksi Berhasil',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        color: ColorName.yellowColor,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'E-Tiket Keberangkatan',
                              style: CustomTextStyles.titlesection,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
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
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
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
                      ),
                      RouteDetail(
                        icon: Icons.train,
                        route: 'Bandung (BD) > Pasar Senen (PS)',
                        date: 'Sab, 8 Jul 2024',
                        timeDetails: '12.00 - 7j 30m - 16.00',
                        ticketClass:
                            'Fajar Utama Yk (144) . Ekonomi (P) . Langsung',
                        // onViewDetails: () {
                        //   showBarModalBottomSheet(
                        //     expand: false,
                        //     context: context,
                        //     backgroundColor: Colors.transparent,
                        //     builder: (context) => ShowModalPenerbangan(),
                        //   );
                        // },
                      ),
                      ListTile(
                        leading: Icon(Icons.phone_android),
                        title: Text(
                          'Rincian Kontak',
                          style: CustomTextStyles.titlesection,
                        ),
                      ),
                      Divider(),
                      ValueRincianData(
                        nama: 'Ahmad Kardawi',
                        data1: 'Email: ahmad@gmail.com',
                        data2: 'No Hp: 089787576565',
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 8,
                        width: double.infinity,
                        color: Colors.grey.shade200,
                      ),
                      ListTile(
                        leading: Icon(Icons.group),
                        title: Text(
                          'Rincian Penumpang',
                          style: CustomTextStyles.titlesection,
                        ),
                      ),
                      Divider(),
                      ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      ValueRincianData(
                        tuan: 'Dewasa',
                        nama: 'Ahmad Kardawi',
                        data1: 'Nomor KTP/NIK: 5675345365645345',
                        data2: 'Tanggal Lahir: 07 Mey 2000',
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ButtonCustom.filled(
                    height: 40,
                    width: double.infinity,
                    onPressed: () {},
                    label: 'Tutup',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
