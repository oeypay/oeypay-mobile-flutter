import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasiPenarikanOtp.dart';
import 'package:oepay/pages/HomePage/detailPageItems/topUp/menunguPembayaran.dart';

class PenarikanalFamart extends StatelessWidget {
  const PenarikanalFamart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Penarikan Tunai Alfamart, Alfamidi, Lawson',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: CustomTopUpCard(),
    );
  }
}

class CustomTopUpCard extends StatefulWidget {
  const CustomTopUpCard({Key? key}) : super(key: key);

  @override
  State<CustomTopUpCard> createState() => _CustomTopUpCardState();
}

class _CustomTopUpCardState extends State<CustomTopUpCard> {
  ExpandedTileController _controller = ExpandedTileController();

  void initState() {
    // initialize controller
    _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Widgetappbar(),
        SingleChildScrollView(
          child: Column(
            children: [
              CustomContainerCard(
                color: Colors.blueGrey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.asset(
                          'assets/icons/alfamart.png',
                          width: 60,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alfamart, Alfamidi, Lawson',
                              style: CustomTextStyles.titlesection,
                            ),
                            Text(
                              'Metode Penarikan',
                              style: CustomTextStyles.textCard,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Klik “Buka Kode” saat didepan kasir',
                              style: CustomTextStyles.textCard,
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: ColorName.yellowSmoth,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '089234234',
                                    style: CustomTextStyles.textVirtualAccount,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Transaksi dijamin aman. Dengan buka kode,kamu dinyatakan menyetujui',
                              style: CustomTextStyles.poppins(
                                size: 12,
                                color: Colors.black54,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Syarat & Ketentuan',
                                style: CustomTextStyles.poppins(
                                  size: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            ButtonCustom.filled(
                              height: 30,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Konfirmasipenarikanotp(
                                            onConfirmation: () {
                                      Navigator.pop(context);
                                    }),
                                  ),
                                );
                              },
                              label: 'Buka Kode',
                              color: ColorName.yellowColor,
                              textColor: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomMessageContainer(
                message:
                    'Maks. penarikan Rp 200.000 + biaya admin Rp 5.000 untuk setiap transaksi',
              ),
              SizedBox(height: 10),
              CustomExpandedTile(
                controller: _controller,
                title: 'Cara Tarik Tunai di Alfamart',
                contentWidgets: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Column(
                    children: [
                      CustomListTitle(
                        title:
                            'Hindari tarik tunai pada jam 23:55-00:10 WIB karena Alfamart ofline 15 menit setiap harinya.',
                      ),
                      CustomListTitle(
                        title:
                            'Kunjungi Alfamart dan kasih tau kasir kamu ingin melakukan tarik tunai OeyPay',
                      ),
                      CustomListTitle(
                        title:
                            'Klik “Buka Kode” lalu masukan pin untuk mengakses kode penarikan',
                      ),
                      CustomListTitle(
                        title:
                            'Beritahu kasir kode penarikanmu dan terima uang dari kasir, Jangan lupa cek tanda terima di riwayat tranaksi OeyPay.',
                      ),
                    ],
                  ),
                ),
              ),
              HelpSection(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 40, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCustom.filled(
                      height: 40,
                      onPressed: () {},
                      label: 'Batalkan',
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                    ButtonCustom.filled(
                      height: 40,
                      onPressed: () {},
                      label: 'Selesai',
                      color: ColorName.yellowColor,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
