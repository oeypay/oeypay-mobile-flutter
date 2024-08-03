// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
// import 'package:oepay/common/components/buttons.dart';
// import 'package:oepay/common/constant/colors.dart';
// import 'package:oepay/common/constant/styleText.dart';
// import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/rincianDataPesawat.dart';
// import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/rincianDetailPesanan.dart';
// import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/rincianKontak.dart';
// import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/rincianPenumpang.dart';
// import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/showModalPenerbangan.dart';

// class RouteDetail extends StatelessWidget {
//   final IconData icon;
//   final String route;
//   final String date;
//   final String timeDetails;
//   final String ticketClass;
//   final VoidCallback onViewDetails;

//   RouteDetail({
//     required this.icon,
//     required this.route,
//     required this.date,
//     required this.timeDetails,
//     required this.ticketClass,
//     required this.onViewDetails,
//   });

//   @override
//   Widget build(BuildContext context) {
//     TextStyle textStyle = GoogleFonts.poppins(
//         fontSize: 14, color: Colors.lime.shade900, fontWeight: FontWeight.w500);

//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 50,
//             padding: EdgeInsets.only(left: 16, right: 16),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(icon, color: Colors.black),
//                 SizedBox(width: 20),
//                 Text(
//                   route,
//                   style: CustomTextStyles.titlesection,
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             color: ColorName.yellowSmoth,
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(date, style: textStyle),
//                     Text(timeDetails, style: textStyle),
//                   ],
//                 ),
//                 Text(
//                   ticketClass,
//                   style: GoogleFonts.poppins(
//                     fontSize: 12,
//                     color: Colors.lime.shade900,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.check_circle,
//                       color: Colors.teal,
//                       size: 18,
//                     ),
//                     SizedBox(width: 8),
//                     Text(
//                       'Dana dapat dikembalikan',
//                       style: CustomTextStyles.poppins(
//                         size: 13,
//                         color: Colors.teal,
//                       ),
//                     ),
//                     Spacer(),
//                     GestureDetector(
//                       onTap: onViewDetails,
//                       child: Container(
//                         width: 100,
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                         decoration: BoxDecoration(
//                           color: ColorName.yellowColor,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Lihat Detail',
//                             style: CustomTextStyles.textNominal,
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ContactDetails extends StatelessWidget {
//   final String? name;
//   final String? email;
//   final String? phoneNumber;
//   final VoidCallback onEdit;

//   ContactDetails(
//       {this.name, this.email, this.phoneNumber, required this.onEdit});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListTile(
//             leading: Icon(Icons.phone_android),
//             title: Text(
//               'Rincian Kontak',
//               style: CustomTextStyles.titlesection,
//             ),
//             trailing: Icon(Icons.chevron_right),
//             onTap: onEdit,
//           ),
//           if (name != null && email != null && phoneNumber != null) ...[
//             Divider(),
//             ValueRincian(
//               nama: name!,
//               data1: 'Email: $email',
//               data2: 'No Hp: $phoneNumber',
//             ),
//             SizedBox(height: 10),
//           ] else
//             Container(),
//         ],
//       ),
//     );
//   }
// }

// class PassengerDetails extends StatelessWidget {
//   final Map<String, String>? passengerData;
//   final VoidCallback onEdit;

//   PassengerDetails({this.passengerData, required this.onEdit});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListTile(
//             leading: Icon(Icons.group),
//             title: Text(
//               'Rincian Penumpang',
//               style: CustomTextStyles.titlesection,
//             ),
//           ),
//           Divider(),
//           if (passengerData != null) ...[
//             ValueRincian(
//               tuan: 'Dewasa',
//               nama:
//                   '${passengerData!['namaDepan']} ${passengerData!['namaBelakang']}',
//               data1: 'Nomor KTP/NIK: ${passengerData!['nomorKtp']}',
//               icon: Icons.chevron_right_rounded,
//               data2: 'Tanggal Lahir: ${passengerData!['tanggalLahir']}',
//             ),
//             Divider(),
//             SizedBox(height: 20),
//           ] else
//             ListTile(
//               title: Text(
//                 'Dewasa 1',
//                 style: CustomTextStyles.titlesection,
//               ),
//               trailing: Icon(Icons.chevron_right),
//               onTap: onEdit,
//             ),
//         ],
//       ),
//     );
//   }
// }
