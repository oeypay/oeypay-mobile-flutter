import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/widget_rincian_data.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'rincian_detail_pesanan.dart';
import 'rincian_kontak.dart';
import 'rincian_penumpang.dart';
import 'show_modal_penerbangan.dart';

class RincianDataPesawat extends StatefulWidget {
  const RincianDataPesawat({super.key});

  @override
  _RincianDataPesawatState createState() => _RincianDataPesawatState();
}

class _RincianDataPesawatState extends State<RincianDataPesawat> {
  Map<String, String>? penumpangData;
  Map<String, String>? penumpangDataKontak;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Masukan Rincian Data',
          style: CustomTextStyles.titleProfilApp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RouteDetail(
              icon: Icons.flight,
              route: 'Bandung (BD) > Makassar (MKS)',
              date: 'Sab, 8 Jul 2024',
              timeDetails: '12.00 - 7j 30m - 16.00',
              ticketClass: 'Sultah Hasanuddin . Ekonomi . Langsung',
              onViewDetails: () {
                showBarModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const ShowModalPenerbangan(),
                );
              },
            ),
            const SizedBox(height: 16),
            ContactDetails(
              name: penumpangDataKontak?['nama'],
              email: penumpangDataKontak?['email'],
              phoneNumber: penumpangDataKontak?['ponsel'],
              onEdit: () {
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
            const SizedBox(height: 10),
            PassengerDetails(
              passengerData: penumpangData,
              onEdit: () async {
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
                                    const RincianDetailPesananPage(),
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
          label: 'Lanjutkan',
          color: ColorName.yellowColor,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
