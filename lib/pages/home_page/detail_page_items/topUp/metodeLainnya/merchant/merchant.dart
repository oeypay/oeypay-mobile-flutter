import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class MerchantPage extends StatefulWidget {
  const MerchantPage({super.key});

  @override
  State<MerchantPage> createState() => _MerchantPageState();
}

class _MerchantPageState extends State<MerchantPage> {
  late ExpandedTileController _control;
  late ExpandedTileController _controler;

  void initState() {
    // initialize controller
    _control = ExpandedTileController(isExpanded: true);
    _controler = ExpandedTileController(isExpanded: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Top Up Merchant',
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
                      children: [
                        SvgPicture.asset(
                          'assets/icons/provider/merchan.svg',
                          width: 50,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Merchan / Mitra OeyPay'),
                            Text(
                              'Metode Top Up',
                              style: CustomTextStyles.textCard,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CustomExpandedTile(
                  controller: _control,
                  imag: 'assets/icons/Bank/bca.svg',
                  title: 'BCA',
                  contentWidgets: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Instruksi'),
                      SizedBox(height: 10),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                    ],
                  ),
                ),
                CustomExpandedTile(
                  controller: _controler,
                  imag: 'assets/icons/Bank/merchant.svg',
                  title: 'MITRA 2',
                  contentWidgets: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Instruksi'),
                      SizedBox(height: 10),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                    ],
                  ),
                ),
                CustomExpandedTile(
                  controller: _controler,
                  imag: 'assets/icons/Bank/merchant.svg',
                  title: 'MITRA 3',
                  contentWidgets: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Instruksi'),
                      SizedBox(height: 10),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                    ],
                  ),
                ),
                CustomExpandedTile(
                  controller: _controler,
                  imag: 'assets/icons/Bank/merchant.svg',
                  title: 'MITRA 4',
                  contentWidgets: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Instruksi'),
                      SizedBox(height: 10),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                      CustomListTitle(
                        title: 'Masukkan kartu ATM dan pin BCA anda',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
