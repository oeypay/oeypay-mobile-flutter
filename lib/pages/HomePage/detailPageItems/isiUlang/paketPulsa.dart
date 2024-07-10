import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/garisPutus.dart';
import 'package:oepay/common/components/showDialogPembayaran.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/hasilTransaksiPulsa.dart';
import 'package:oepay/pages/HomePage/detailPageItems/isiUlang/isiUlangDetail.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/konfirmasiPenarikanOtp.dart';

class Paketpulsa extends StatelessWidget {
  const Paketpulsa({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomBottomSheet(
          context: context,
          titleHarga: 'Harga',
          noHp: '085676445776',
          pulsaData: '10.000',
          transaksi: 'Rp.0',
          hargaPulsa: 'Rp.15.000',
          totalPembayaran: 'Rp.15.000',
          saldoOeyPay: 'Rp.20.000',
          onPayPressed: () {
            // customShowDialog(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Konfirmasipenarikanotp(
                  onConfirmation: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Hasiltransaksipulsa(),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width / 2 - 25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(color: ColorName.yellowColor, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '10.000',
              style: CustomTextStyles.textButton,
            ),
            const SizedBox(height: 8.0),
            Text(
              'Harga',
              style: CustomTextStyles.titleProfil,
            ),
            const SizedBox(height: 4.0),
            Text(
              'Rp.10.000',
              style: CustomTextStyles.titleShowModal,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '10%',
                    style: GoogleFonts.poppins(
                      color: Colors.pink,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Rp 7.000',
                    style: GoogleFonts.poppins(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//   void customShowDialog(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return Dialog(
//             backgroundColor: ColorName.light,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Container(
//                     height: 60,
//                     decoration: BoxDecoration(
//                       color: ColorName.yellowColor,
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(20)),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Konfirmasi Pembayarn',
//                         style: CustomTextStyles.titleProfilApp,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Telkomsel',
//                           style: CustomTextStyles.titlesection,
//                         ),
//                         Text(
//                           'Rp6.500',
//                           style: CustomTextStyles.titlesection,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Sisa Saldo',
//                           style: CustomTextStyles.titlesection,
//                         ),
//                         Text(
//                           'Rp6.500',
//                           style: CustomTextStyles.titlesection,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   DashedLineExample(),
//                   // Row(
//                   //   children: [
//                   //     Text(
//                   //       'Metode Pembayaran',
//                   //       style: CustomTextStyles.titlesection,
//                   //     ),
//                   //     // RadioListTile(
//                   //     //   title: const Text('OVO Cash'),
//                   //     //   subtitle: const Text('Kurang Rp6.500'),
//                   //     //   value: 'OVO Cash',
//                   //     //   groupValue: 'OVO Cash',
//                   //     //   onChanged: (value) {},
//                   //     // ),
//                   //   ],
//                   // ),
//                   const SizedBox(height: 30),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Text('Tukar 0 Points'),
//                         Switch(
//                           value: true,
//                           onChanged: (value) {},
//                         ),
//                       ],
//                     ),
//                   ),

//                   Container(
//                     padding: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             blurRadius: 3,
//                             offset: Offset(0, 3),
//                             color: Colors.blueGrey.withOpacity(0.2),
//                           )
//                         ]),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Total Bayar',
//                               style: CustomTextStyles.titleItem,
//                             ),
//                             Text(
//                               'Rp6.500',
//                               style: CustomTextStyles.titleProfil,
//                             ),
//                           ],
//                         ),
//                         ButtonCustom.filled(
//                           width: 120,
//                           height: 40,
//                           onPressed: () {
//                             AwesomeDialog(
//                               btnOkColor: Colors.blue,
//                               context: context,
//                               dialogType: DialogType.success,
//                               animType: AnimType.rightSlide,
//                               title: 'Berhasil',
//                               desc: 'Pulsa selesai di bayar',
//                               // btnCancelOnPress: () {},
//                               btnOkOnPress: () {},
//                             )..show();
//                           },
//                           label: 'Bayar',
//                           color: ColorName.yellowColor,
//                           textColor: Colors.white,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
}
