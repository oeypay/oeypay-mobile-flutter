import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/rincianDetailPesanan.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/rincianKontak.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/rincianPenumpang.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/showModalPenerbangan.dart';

class RincianDataPages extends StatefulWidget {
  @override
  _RincianDataPagesState createState() => _RincianDataPagesState();
}

class _RincianDataPagesState extends State<RincianDataPages> {
  Map<String, String>? penumpangData;
  Map<String, String>? penumpangDataKontak;

  @override
  Widget build(BuildContext context) {
    TextStyle text = GoogleFonts.poppins(
        fontSize: 14, color: Colors.lime.shade900, fontWeight: FontWeight.w500);

    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Masukan Rincian Data',
          style: CustomTextStyles.titleProfilApp,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Container(
                    color: ColorName.yellowSmoth,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sab, 8 Jul 2024',
                              style: text,
                            ),
                            Text(
                              '12.00 - 7j 30m - 16.00',
                              style: text,
                            ),
                          ],
                        ),
                        Text(
                          'Langsung . Ekonomi',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.lime.shade900,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.teal,
                              size: 18,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Dana dapat dikembalikan',
                              style: CustomTextStyles.poppins(
                                size: 13,
                                color: Colors.teal,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () => showBarModalBottomSheet(
                                expand: false,
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => ShowModalPenerbangan(),
                              ),
                              child: Container(
                                width: 100,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: ColorName.yellowColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Lihat Detail',
                                    style: CustomTextStyles.textNominal,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Text(
                      'Rincian Kontak',
                      style: CustomTextStyles.titlesection,
                    ),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RincianKontakPage(
                            onSave: (data) {
                              setState(() {
                                penumpangDataKontak = data;
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  if (penumpangDataKontak != null) ...[
                    Divider(),
                    ValueRincian(
                      nama: '${penumpangDataKontak!['nama']}',
                      data1: 'Email: ${penumpangDataKontak!['email']}',
                      data2: 'No Hp: ${penumpangDataKontak!['ponsel']}',
                    ),
                    SizedBox(height: 10),
                  ] else
                    Container(),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.group),
                    title: Text(
                      'Rincian Penumpang',
                      style: CustomTextStyles.titlesection,
                    ),
                  ),
                  Divider(),
                  if (penumpangData != null) ...[
                    ValueRincian(
                      tuan: 'Dewasa',
                      nama:
                          '${penumpangData!['namaDepan']} ${penumpangData!['namaBelakang']}',
                      data1: 'Nomor KTP/NIK: ${penumpangData!['nomorKtp']}',
                      icon: Icons.chevron_right_rounded,
                      data2: 'Tanggal Lahir: ${penumpangData!['tanggalLahir']}',
                    ),
                    Divider(),
                    SizedBox(height: 20),
                  ] else
                    // Divider(),
                    ListTile(
                      title: Text(
                        'Dewasa 1',
                        style: CustomTextStyles.titlesection,
                      ),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RincianPenumpangPage(
                              onSave: (data) {
                                setState(() {
                                  penumpangData = data;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
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
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: ColorName.light,
                  title: Text(
                    'Apakah rincian pesanan sudah sesuai?',
                    style: CustomTextStyles.titlesection,
                    textAlign: TextAlign.center,
                  ),
                  content: Text(
                    'Anda tidak dapat mengubah rincian setelah pesanan di buat',
                    style: CustomTextStyles.titleItem,
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonCustom.filled(
                          width: 125,
                          height: 40,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          label: 'Batalkan',
                          color: Colors.amber.shade100,
                          textColor: Colors.black,
                        ),
                        ButtonCustom.filled(
                          width: 125,
                          height: 40,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RincianDetailPesananPage(),
                              ),
                            );
                          },
                          label: 'Lanjutkan',
                          color: ColorName.yellowColor,
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
          label: 'Checkout',
          color: ColorName.yellowColor,
          textColor: Colors.black,
        ),
      ),
    );
  }
}

class ValueRincian extends StatelessWidget {
  final String nama;
  final String data1;
  final String data2;
  final String? tuan;
  final IconData? icon;

  ValueRincian({
    super.key,
    required this.nama,
    required this.data1,
    required this.data2,
    this.icon,
    this.tuan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 25,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  nama,
                  style: CustomTextStyles.titlesection,
                ),
                SizedBox(width: 10),
                if (tuan != null)
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      tuan!,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                else
                  Container(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data1,
                  style: CustomTextStyles.titleProfil,
                ),
                if (icon != null) Icon(Icons.chevron_right) else Container(),
              ],
            ),
            Text(
              data2,
              style: CustomTextStyles.titleProfil,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
