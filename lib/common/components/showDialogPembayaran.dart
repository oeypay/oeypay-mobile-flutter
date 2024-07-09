import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';

void showCustomBottomSheet({
  required BuildContext context,
  required String noHp,
  required String pulsaData,
  required String transaksi,
  required String hargaPulsa,
  required String totalPembayaran,
  required String saldoOeyPay,
  required VoidCallback onPayPressed,
}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: ColorName.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            const Text(
              'Informasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 16.0),
            DashedLineExample(),
            SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'No Hp:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  noHp,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Telkomsel:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  pulsaData,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            SizedBox(height: 10),
            DashedLineExample(),
            SizedBox(height: 10),
            const Text(
              'Pembayaran',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Transaksi:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  transaksi,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Harga:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  hargaPulsa,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                const Text(
                  'Total Pembayaran:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  totalPembayaran,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            DashedLineExample(),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Text(
                  'Saldo OeyPay Anda:',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  saldoOeyPay,
                  style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
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
                  label: 'Bayar',
                  color: ColorName.yellowColor,
                  textColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
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

  CustomShowModalBottomSheet({
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
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
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
                icon: Icon(
                  Icons.close_rounded,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              padding: EdgeInsets.all(15),
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
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          Text(
            _topUpTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ..._topUpSteps.map(
            (step) => CustomListTitle(title: step),
          ),
        ],
      ),
    );
  }
}
