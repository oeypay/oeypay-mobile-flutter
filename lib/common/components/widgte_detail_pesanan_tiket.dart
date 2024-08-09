import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors.dart';
import '../constant/style_text.dart';

class RincianDetailPesananContent extends StatelessWidget {
  final String flightRoute;
  final String flightDate;
  final String flightType;
  final String voucherIconPath;
  final String voucherHintText;
  final String paymentIconPath;
  final String balanceLabel;
  final String balanceValue;
  final String totalOrderLabel;
  // final String totalOrderValue;
  // final String totalPaymentLabel;
  // final String totalPaymentValue;
  final IconData icon;

  const RincianDetailPesananContent({
    super.key,
    required this.flightRoute,
    required this.icon,
    required this.flightDate,
    required this.flightType,
    required this.voucherIconPath,
    required this.voucherHintText,
    required this.paymentIconPath,
    required this.balanceLabel,
    required this.balanceValue,
    required this.totalOrderLabel,
    // required this.totalOrderValue,
    // required this.totalPaymentLabel,
    // required this.totalPaymentValue,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController voucherController = TextEditingController();
    TextStyle textStyle = GoogleFonts.poppins(
      fontSize: 14,
      color: Colors.lime.shade900,
      fontWeight: FontWeight.w500,
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: ColorName.yellowSmoth,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(icon, color: Colors.black),
                          const SizedBox(width: 20),
                          Text(
                            flightRoute,
                            style: CustomTextStyles.titlesection,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        flightDate,
                        style: textStyle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        flightType,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.lime.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.grey.shade300),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        voucherIconPath,
                        width: 20,
                        color: Colors.red.shade600,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Voucher',
                        style: CustomTextStyles.titlesection,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: SizedBox(
                          width: 200,
                          child: TextFormField(
                            controller: voucherController,
                            decoration: InputDecoration(
                              hintText: voucherHintText,
                              hintStyle: GoogleFonts.poppins(fontSize: 12),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 8,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
