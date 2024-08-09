import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garis_putus.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

void showCustomBottomSheet({
  required BuildContext context,
  String? noHp,
  required String? titleHarga,
  String? pulsaData,
  // String? titleMeter,
  int? nomorMeter,
  int? iDPelanggan,
  // String? titleIdPelanggan,
  String? namaPelanggan,
  // String? titleNamaPelanggan,
  String? tarifDaya,
  // String? tokenListrik,
  required String transaksi,
  String? hargaPrice,
  required String totalPembayaran,
  required String saldoOeyPay,
  required VoidCallback onPayPressed,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: ColorName.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Text(
                'Informasi Pelanggan',
                style: CustomTextStyles.titleShowModal,
              ),
              const SizedBox(height: 20),
              // const SizedBox(height: 10.0),
              if (nomorMeter != null)
                Row(
                  children: [
                    Text(
                      'Nomor Meter',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      nomorMeter.toString(),
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),
              // const SizedBox(height: 10.0),
              if (iDPelanggan != null)
                Row(
                  children: [
                    Text(
                      'ID Pelanggan',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      iDPelanggan.toString(),
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),
              // const SizedBox(height: 10.0),
              if (namaPelanggan != null)
                Row(
                  children: [
                    Text(
                      'Nama Pelanggan',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      namaPelanggan,
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),
              if (tarifDaya != null)
                Row(
                  children: [
                    Text(
                      'Tarif / Daya',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      tarifDaya,
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),

              if (noHp != null)
                Row(
                  children: [
                    Text(
                      'Nomor Ponsel',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      noHp,
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),
              const SizedBox(height: 10.0),
              if (pulsaData != null)
                Row(
                  children: [
                    Text(
                      'Voucher Telkomsel',
                      style: CustomTextStyles.titlesection,
                    ),
                    const Spacer(),
                    Text(
                      pulsaData,
                      style: CustomTextStyles.titlesection,
                    ),
                  ],
                )
              else
                Container(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sumber Dana',
                    style: CustomTextStyles.textCard,
                  ),
                  Text(
                    'Saldo OeyPay',
                    style: CustomTextStyles.textCard,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo.svg',
                    width: 70,
                  ),
                  Text(
                    'Rp 2.000.000',
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Detail Pembayaran',
                style: CustomTextStyles.titleShowModal,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    titleHarga!,
                    style: CustomTextStyles.titlesection,
                  ),
                  const Spacer(),
                  Text(
                    hargaPrice!,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'Biaya Transaksi',
                    style: CustomTextStyles.titlesection,
                  ),
                  const Spacer(),
                  Text(
                    transaksi,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const DashedLineExample(),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Text(
                    'Total Pembayaran:',
                    style: CustomTextStyles.titlesection,
                  ),
                  const Spacer(),
                  Text(
                    totalPembayaran,
                    style: CustomTextStyles.titlesection,
                  ),
                ],
              ),
              const SizedBox(height: 26.0),

              // Row(
              //   children: [
              //     Text(
              //       'Saldo OeyPay Anda:',
              //       style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              //     ),
              //     Spacer(),
              //     Text(
              //       saldoOeyPay,
              //       style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
              //     ),
              //   ],
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonCustom.filled(
                    height: 40,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    label: 'Tutup',
                    color: ColorName.white,
                    textColor: Colors.black,
                  ),
                  ButtonCustom.filled(
                    height: 40,
                    onPressed: onPayPressed,
                    label: 'Konfirmasi',
                    color: ColorName.yellowColor,
                    textColor: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}

class CustomShowModalBottomSheet extends StatelessWidget {
  final String _virtualAccountTitle;
  final String _virtualAccountNumber;
  final String _topUpTitle;
  final String iconik;
  final List<String> _topUpSteps;

  const CustomShowModalBottomSheet({
    super.key,
    required this.iconik,
    required String virtualAccountTitle,
    required String virtualAccountNumber,
    required String topUpTitle,
    required List<String> topUpSteps,
  })  : _virtualAccountTitle = virtualAccountTitle,
        _virtualAccountNumber = virtualAccountNumber,
        _topUpTitle = topUpTitle,
        _topUpSteps = topUpSteps;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: ColorName.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  iconik,
                  width: 50,
                ),
                Text(
                  _virtualAccountTitle,
                  style: CustomTextStyles.titlesection,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorName.yellowColor),
                  color: ColorName.yellowSmoth,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _virtualAccountNumber,
                  style: CustomTextStyles.textVirtualAccount,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 30,
                width: 160,
                child: ButtonCustom.filled(
                    onPressed: () {},
                    label: 'salin nomor',
                    color: ColorName.yellowColor,
                    textColor: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _topUpTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ..._topUpSteps.map(
              (step) => CustomListTitle(title: step),
            ),
          ],
        ),
      ),
    );
  }
}
