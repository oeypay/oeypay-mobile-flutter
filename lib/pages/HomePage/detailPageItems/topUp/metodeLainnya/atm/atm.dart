import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

class AtmPage extends StatefulWidget {
  const AtmPage({super.key});

  @override
  State<AtmPage> createState() => _AtmPageState();
}

class _AtmPageState extends State<AtmPage> {
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
          'Top Up ATM',
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
                          'assets/icons/provider/atm.svg',
                          width: 50,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ATM'),
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
                  imag: 'assets/icons/Bank/bri.svg',
                  title: 'BRI',
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
                  imag: 'assets/icons/Bank/mandiri.svg',
                  title: 'MANDIRI',
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
                  imag: 'assets/icons/Bank/bni.svg',
                  title: 'BNI',
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
                  imag: 'assets/icons/Bank/mega.svg',
                  title: 'BANK MEGA',
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
                  imag: 'assets/icons/Bank/maybank.svg',
                  title: 'MAY BANK',
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
                  imag: 'assets/icons/Bank/danamon.svg',
                  title: 'DANAMON',
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
                  imag: 'assets/icons/Bank/permata.svg',
                  title: 'PERMATA BANK',
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
