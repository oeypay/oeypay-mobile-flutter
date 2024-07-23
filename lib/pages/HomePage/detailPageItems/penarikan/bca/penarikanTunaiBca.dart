import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/penarikanDetails.dart';

class PenarikanTunaiBca extends StatefulWidget {
  const PenarikanTunaiBca({super.key});

  @override
  State<PenarikanTunaiBca> createState() => _PenarikanTunaiBcaState();
}

class _PenarikanTunaiBcaState extends State<PenarikanTunaiBca> {
  ExpandedTileController _controller = ExpandedTileController();

  void initState() {
    // initialize controller
    _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Penarikan Tunai BCA',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Stack(
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
                            child: SvgPicture.asset(
                              'assets/icons/Bank/bca.svg',
                              width: 50,
                            )),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ATM BCA',
                              style: CustomTextStyles.titlesection,
                            ),
                            Text(
                              'Metode Penarikan',
                              style: CustomTextStyles.textCard,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Kode transaksi',
                              style: CustomTextStyles.textCard,
                            ),
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                color: ColorName.yellowSmoth,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '089323421',
                                    style: CustomTextStyles.textVirtualAccount,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'No Handphone',
                              style: CustomTextStyles.textCard,
                            ),
                            Text(
                              '089876554768',
                              style: CustomTextStyles.titleProfilApp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CustomContainerCard(
                  color: Colors.blueGrey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detail',
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          'Sumber Dana',
                          style: CustomTextStyles.textCard,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/logo.svg',
                              width: 60,
                            ),
                            SizedBox(width: 20),
                            Text(
                              '(Saldo: Rp. 5.000.000)',
                              style: CustomTextStyles.titleProfil,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nominal Penarikan',
                              style: CustomTextStyles.titleProfil,
                            ),
                            Text(
                              'Rp. 20.000',
                              style: CustomTextStyles.titleProfil,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Biaya Penarikan',
                              style: CustomTextStyles.titleProfil,
                            ),
                            Text(
                              'Rp. 2000',
                              style: CustomTextStyles.titleProfil,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CustomMessageContainer(
                  message:
                      'Silahkan tarik tunai sebelum 13.30 WIB. Jika gagal,  Saldo OeyPay akan dikembalikan.',
                ),
                SizedBox(height: 10),
                CustomExpandedTile(
                  controller: _controller,
                  title: 'Cara Tarik Tunai di ATM BCA',
                  contentWidgets: Column(
                    children: [
                      CustomListTitle(
                        title: 'Di ATM BCA, Pilih tarik tunai tanpa kartu.',
                      ),
                      CustomListTitle(
                        title: 'Masukan No. Handphone kamu: 082399437723',
                      ),
                      CustomListTitle(
                        title: 'Masukan Kode Transaksi Kamu : 453923',
                      ),
                      CustomListTitle(
                        title:
                            'Tarik uang tunai kamu dari ATM dan cek tanda terima di riwayat transaksi',
                      ),
                    ],
                  ),
                ),
                HelpSection(),
                SizedBox(height: 20),
                Divider(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ButtonCustom.filled(
                    height: 45,
                    width: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Penarikandetails(),
                        ),
                      );
                    },
                    label: 'Selesai',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
