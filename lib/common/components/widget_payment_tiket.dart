import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/style_text.dart';

class DetailPembayaranWidget extends StatelessWidget {
  final Color colorBorder;
  final String balanceLabel;
  final String balanceValue;
  final Color colorTotal;
  final String totalOrderValue;
  final String? voucher;
  final String totalPaymentValue;

  const DetailPembayaranWidget({
    super.key,
    required this.colorBorder,
    required this.balanceLabel,
    required this.balanceValue,
    required this.colorTotal,
    // required this.totalOrderLabel,
    required this.totalOrderValue,
    this.voucher,
    required this.totalPaymentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colorBorder),
      ),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset(
              'assets/icons/dompet.svg',
              width: 20,
            ),
            title: Text(
              'Detail Pembayaran',
              style: CustomTextStyles.titlesection,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  balanceLabel,
                  style: CustomTextStyles.titleProfil,
                ),
                Text(
                  balanceValue,
                  style: CustomTextStyles.titleProfil,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pesanan',
                  style: CustomTextStyles.titleProfil,
                ),
                Text(
                  totalOrderValue,
                  style: CustomTextStyles.titleProfil,
                ),
              ],
            ),
          ),
          if (voucher != null && voucher!.isNotEmpty) ...[
            // const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Voucher',
                    style: CustomTextStyles.titleProfil,
                  ),
                  Text(
                    voucher!,
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
            ),
          ],
          Container(
            height: 8,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorTotal,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pembayaran',
                  style: CustomTextStyles.titlesection,
                ),
                Text(
                  totalPaymentValue,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }
}
