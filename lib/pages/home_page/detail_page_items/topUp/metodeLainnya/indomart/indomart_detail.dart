import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garis_putus.dart';
import 'package:oepay/common/components/widget_appbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

import '../../menungu_pembayaran.dart';

class Indomartdetail extends StatelessWidget {
  const Indomartdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Top Up Indomaret',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Stack(
        children: [
          Widgetappbar(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/provider/indomart.svg',
                      width: 50,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Indomaret',
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          'Metode TopUp',
                          style: CustomTextStyles.titleItem,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Minimal TopUp',
                  style: CustomTextStyles.titlesection,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [

                    //   ],
                    // ),

                    Text(
                      'Rp. 200.000',
                      style: CustomTextStyles.textButton,
                    ),
                    // SizedBox(width: 100),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/icons/close.png',
                        width: 21,
                      ),
                    )
                  ],
                ),
                Text(
                  'Biaya TopUp Rp 0',
                  style: CustomTextStyles.titleItem,
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 40,
                  child: ButtonCustom.filled(
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: ColorName.light,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: ColorName.light,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Detail Transaksi',
                                    style: CustomTextStyles.titleShowModal,
                                  ),
                                  // SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Metode Top Up',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                      Text(
                                        'Indomaret',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Nominal Top Up',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                      Text(
                                        'Rp 200.000',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Biaya Top Up',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                      Text(
                                        'Rp 0',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                    ],
                                  ),
                                  DashedLineExample(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Pembayaran',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                      Text(
                                        'Rp 200.00',
                                        style: CustomTextStyles.titlesection,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ButtonCustom.filled(
                                        height: 40,
                                        onPressed: () {},
                                        label: 'Ubah',
                                        color: Colors.white,
                                        textColor: Colors.black,
                                      ),
                                      ButtonCustom.filled(
                                        height: 40,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Menungupembayaran(),
                                            ),
                                          );
                                        },
                                        label: 'Konfirmasi',
                                        color: ColorName.yellowColor,
                                        textColor: Colors.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    label: 'Lanjut',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
