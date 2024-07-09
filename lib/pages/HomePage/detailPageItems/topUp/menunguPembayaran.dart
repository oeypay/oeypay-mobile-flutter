import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customContainerCard.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetAppBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

// models/top_up_model.dart
class TopUpModel {
  final String paymentMethod;
  final String code;
  final int amount;

  TopUpModel(
      {required this.paymentMethod, required this.code, required this.amount});

  factory TopUpModel.fromJson(Map<String, dynamic> json) {
    return TopUpModel(
      paymentMethod: json['paymentMethod'],
      code: json['code'],
      amount: json['amount'],
    );
  }
}

// widgets/top_up_card.dart

class TopUpCard extends StatefulWidget {
  final TopUpModel topUpModel;

  const TopUpCard({Key? key, required this.topUpModel}) : super(key: key);

  @override
  State<TopUpCard> createState() => _TopUpCardState();
}

class _TopUpCardState extends State<TopUpCard> {
  late ExpandedTileController _controller;

  void initState() {
    // initialize controller
    _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TopUpModel model = widget.topUpModel;
    return Column(
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
                    'assets/icons/indomart.png',
                    width: 60,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.topUpModel.paymentMethod}',
                      style: CustomTextStyles.titlesection,
                    ),
                    Text(
                      'Metode Top Up',
                      style: CustomTextStyles.textCard,
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: ColorName.yellowSmoth,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.topUpModel.code,
                            style: GoogleFonts.poppins(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text('kode bayar'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Minimal Top Up',
                      style: CustomTextStyles.textCard,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rp. ${widget.topUpModel.amount}',
                          style: CustomTextStyles.titlesection,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          height: 30,
                          width: 125,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorName.yellowColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Batal TopUp',
                              style: GoogleFonts.poppins(
                                  color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CustomMessageContainer(
          message:
              'Hindari top up jam 23:55- 00:10 WIB karena Indomaret offline 15 menit setaip harinya',
        ),
        SizedBox(height: 10),
        CustomExpandedTile(
            controller: _controller,
            title: 'Cara bayar di Indomaret',
            contentWidgets: Column(
              children: [
                CustomListTitle(
                  title:
                      'Sampaikan kepada kasir Indomaret atau Ceriamaret untuk melakukan pembayaran ke merchant OeyPay',
                ),
                CustomListTitle(
                  title: 'Tunjukan kode bayar 08923434444 ke kasir',
                ),
                CustomListTitle(
                  title:
                      'Lakukan pembayaran sebesar Rp. 25.000 dalam waktu 24 jam',
                ),
                CustomListTitle(
                  title:
                      'Saldo OeyPay akan bertambah otomatis paling lama 1x24 jam',
                ),
                CustomListTitle(
                  title:
                      'Simpanstruk sampai Top Up berhasil dan pakai bukti jika dibutuhkan',
                ),
              ],
            )),
        HelpSection(),
        SizedBox(height: 8),
        Divider()
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;

  const CustomListTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.check_circle,
              color: Color(0xff039E8F),
              size: 20,
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class Menungupembayaran extends StatelessWidget {
  // late TopUpModel topUpModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Top Up'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Widgetappbar(),
            Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/icons/Group 16.png',
                    width: 34,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Pembayaran Top Up',
                  style: CustomTextStyles.titlesection,
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Paling lambat 03 Juli, 09:42 WITA',
                    style: CustomTextStyles.titleItem,
                  ),
                ),
                TopUpCard(
                  topUpModel: TopUpModel(
                    paymentMethod: 'Indomaret',
                    code: '8318818989',
                    amount: 200000,
                  ),
                ),
                // ListTile(
                //   leading: Image.asset('assets/icons/Groub24.png'),
                //   title: Text('Kunjungi Pusat Bantuan OeyPay di sini !!'),
                //   trailing: Icon(Icons.arrow_forward_ios_rounded),
                // )

                // Text(
                //   'Cara Bayar di Indomaret:',
                //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                // ),
                // _PaymentInstructions(topUpModel: topUpModel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
