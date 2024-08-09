import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

import '../../../../../common/components/widget_value_rincian_data.dart';
import '../pesawat/show_modal_penerbangan_page.dart';

class LihatETiketPesawat extends StatelessWidget {
  const LihatETiketPesawat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text(
          'Tiket Pesawat',
          style: CustomTextStyles.titleProfilApp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Tiket Keberangkatan',
                style: CustomTextStyles.titlesection,
              ),
              leading: Image.asset('assets/icons/landing.png'),
              subtitle: Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Colors.teal,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Dana dapat di kembalikan',
                    style: CustomTextStyles.poppins(
                      size: 13,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              color: ColorName.yellowSmoth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kode booking',
                    style: CustomTextStyles.poppins(
                      size: 12,
                      color: Color.fromARGB(255, 146, 117, 1),
                    ),
                  ),
                  Text(
                    'IE45R',
                    style: CustomTextStyles.poppins(
                      size: 30,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 146, 117, 1),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlightSegmentDetails(
                // image: 'assets/icons/garuda.png',
                iconOval: 'assets/icons/mendarat.png',
                // icondata: Icons.location_on,
                stasiun: 'Fajar Utama YK(144)',
                gerbong: 'G-30',
                kelas: 'ekonomi',
                icon: 'assets/icons/landing.png',
                departureCity: 'Jakarta (CGK)',
                departureAirport: 'Soekarno Hatta International Airport',
                departureTime: '12:00',
                duration: '7j 30m',
                arrivalCity: 'Surabaya (SUB)',
                arrivalAirport: 'Juanda, Terminal 1A',
                arrivalTime: '20:00',
                tglPergi: 'Sab, 30 Apr 2022',
                tglPulang: 'Sab, 30 Apr 2022',
              ),
            ),
            Container(
              height: 8,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: const Icon(Icons.phone_android),
              title: Text(
                'Rincian Kontak',
                style: CustomTextStyles.titlesection,
              ),
            ),
            const Divider(),
            const ValueRincianData(
              nama: 'Ahmad Kardawi',
              data1: 'Email: ahmad@gmail.com',
              data2: 'No Hp: 089787576565',
            ),
            const SizedBox(height: 10),
            Container(
              height: 8,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: Text(
                'Rincian Penumpang',
                style: CustomTextStyles.titlesection,
              ),
            ),
            const Divider(),
            const ValueRincianData(
              tuan: 'Dewasa',
              nama: 'Ahmad Kardawi',
              data1: 'Nomor KTP/NIK: 5675345365645345',
              data2: 'Tanggal Lahir: 07 Mey 2000',
              nomorGerbong: 'EKO - 1(3A)',
              kursi: 'Kursi',
            ),
            const SizedBox(height: 10),
            const Divider(),
            const ValueRincianData(
              tuan: 'Dewasa',
              nama: 'Ahmad Kardawi',
              data1: 'Nomor KTP/NIK: 5675345365645345',
              data2: 'Tanggal Lahir: 07 Mey 2000',
              nomorGerbong: 'EKO - 1(3A)',
              kursi: 'Kursi',
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
