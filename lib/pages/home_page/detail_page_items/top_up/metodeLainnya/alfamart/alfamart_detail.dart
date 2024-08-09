import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:oepay/common/components/custom_container_card.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

class Alfamartdetail extends StatelessWidget {
  const Alfamartdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Top Up',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: const CustomTopUpCard(),
    );
  }
}

class CustomTopUpCard extends StatefulWidget {
  const CustomTopUpCard({super.key});

  @override
  State<CustomTopUpCard> createState() => _CustomTopUpCardState();
}

class _CustomTopUpCardState extends State<CustomTopUpCard> {
  ExpandedTileController _controller = ExpandedTileController();

  @override
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
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Alfamart, Alfamidi, Lawson',
                            style: CustomTextStyles.titlesection,
                          ),
                          Text(
                            'Metode Top Up',
                            style: CustomTextStyles.textCard,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: ColorName.yellowSmoth,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '0893-2342-1234',
                                  style: CustomTextStyles.textVirtualAccount,
                                ),
                                Text(
                                  'No HP',
                                  style: CustomTextStyles.textCard,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biaya Top Up',
                                style: CustomTextStyles.textCard,
                              ),
                              // IconButton(
                              //   splashRadius: 25,
                              //   onPressed: () {},
                              //   icon: Icon(
                              //     Icons.info_rounded,
                              //     size: 18,
                              //   ),
                              // ),
                              const SizedBox(width: 30),
                              Text(
                                'Minimal Top Up',
                                style: CustomTextStyles.textCard,
                              ),
                            ],
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rp 2.000',
                                style: CustomTextStyles.textCard,
                              ),
                              const SizedBox(width: 60),
                              Text(
                                'Rp. 20.000',
                                style: CustomTextStyles.textCard,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const CustomMessageContainer(
                message:
                    'Hindari top up jam 23:55- 00:10 WIB karena Indomaret offline 15 menit setaip harinya',
              ),
              const SizedBox(height: 10),
              CustomExpandedTile(
                controller: _controller,
                title: 'Cara Top Up di Alfamart, Alfamidi, Lawson',
                contentWidgets: Column(
                  children: [
                    const CustomListTitle(
                      title: 'Kunjungi Alfamart, Alfamidi, Lawson terdekat',
                    ),
                    const CustomListTitle(
                      title: 'Sebutkan nomor HP kamu yang diatas ke kasir',
                    ),
                    const CustomListTitle(
                      title:
                          'Beritahu nominal top up, pilihannya sebagai berikut',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _container('Rp 20.000'),
                                _container('Rp 50.000'),
                                _container('Rp 100.000'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _container('Rp 200.000'),
                                _container('Rp 300.000'),
                                _container('Rp 400.000'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _container('Rp 500.000'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CustomListTitle(
                      title:
                          'Saldo OeyPay akan bertambah otomatis paling lama 1x24 jam',
                    ),
                    const CustomListTitle(
                      title:
                          'Simpanstruk sampai Top Up berhasil dan pakai bukti jika dibutuhkan',
                    ),
                  ],
                ),
              ),
              const HelpSection(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _container(String nominal) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(left: 5, right: 5),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          nominal,
          style: CustomTextStyles.textNominal,
        ),
      ),
    );
  }
}
