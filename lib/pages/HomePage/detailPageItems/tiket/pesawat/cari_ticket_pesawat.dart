import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/pesawat/show_modal_penerbangan.dart';

import '../../../../../common/components/tiketCustomCard.dart';

class FlightTicketWidget extends StatelessWidget {
  const FlightTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Jakarta > Makassar',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.2),
                blurRadius: 1,
                offset: Offset(0, 2),
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: const [
                    Icon(Icons.calendar_today, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Sab, 8 Jul 2024',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.sort, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Urutkan',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.filter_alt, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Filter',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () => showBarModalBottomSheet(
              expand: false,
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => ShowModalPenerbangan(),
            ),
            child: TicketCard(
              logoPath: 'assets/icons/garuda.png',
              price: 'Rp 800.000',
              departureStation: 'Jakarta, JKT48',
              departureCode: 'JKT48',
              departureTime: '12.00 AM',
              duration: '7j 20m',
              arrivalStation: 'Makassar, MKS',
              arrivalCode: 'MKS',
              arrivalTime: '08.00 PM',
              vehicleIconPath: 'assets/icons/pesawat.png',
            ),
          ),
        ],
      ),
      // bottomSheet: ShowModalPenerbangan(),
    );
  }
}
