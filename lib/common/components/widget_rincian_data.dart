import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/widget_value_rincian_data.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/style_text.dart';

class RouteDetail extends StatelessWidget {
  final IconData icon;
  final String route;
  final String date;
  final String timeDetails;
  final String ticketClass;
  final VoidCallback? onViewDetails;

  const RouteDetail({
    super.key,
    required this.icon,
    required this.route,
    required this.date,
    required this.timeDetails,
    required this.ticketClass,
    this.onViewDetails,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = GoogleFonts.poppins(
        fontSize: 14, color: Colors.lime.shade900, fontWeight: FontWeight.w500);

    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.black),
                const SizedBox(width: 20),
                Text(
                  route,
                  style: CustomTextStyles.titlesection,
                ),
              ],
            ),
          ),
          Container(
            color: ColorName.yellowSmoth,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(date, style: textStyle),
                    Text(timeDetails, style: textStyle),
                  ],
                ),
                Text(
                  ticketClass,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.lime.shade900,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Colors.teal,
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Dana dapat dikembalikan',
                      style: CustomTextStyles.poppins(
                        size: 13,
                        color: Colors.teal,
                      ),
                    ),
                    const Spacer(),
                    if (onViewDetails != null)
                      GestureDetector(
                        onTap: onViewDetails,
                        child: Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: ColorName.yellowColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Lihat Detail',
                              style: CustomTextStyles.textNominal,
                            ),
                          ),
                        ),
                      )
                    else
                      Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  final String? name;
  final String? email;
  final String? phoneNumber;
  final VoidCallback onEdit;

  const ContactDetails(
      {super.key,
      this.name,
      this.email,
      this.phoneNumber,
      required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.phone_android),
            title: Text(
              'Rincian Kontak',
              style: CustomTextStyles.titlesection,
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: onEdit,
          ),
          if (name != null && email != null && phoneNumber != null) ...[
            const Divider(),
            ValueRincianData(
              nama: name!,
              data1: 'Email: $email',
              data2: 'No Hp: $phoneNumber',
            ),
            const SizedBox(height: 10),
          ] else
            Container(),
        ],
      ),
    );
  }
}

class PassengerDetails extends StatelessWidget {
  final Map<String, String>? passengerData;
  final VoidCallback onEdit;

  const PassengerDetails({super.key, this.passengerData, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(
              'Rincian Penumpang',
              style: CustomTextStyles.titlesection,
            ),
          ),
          const Divider(),
          if (passengerData != null) ...[
            ValueRincianData(
              tuan: 'Dewasa',
              nama:
                  '${passengerData!['namaDepan']} ${passengerData!['namaBelakang']}',
              data1: 'Nomor KTP/NIK: ${passengerData!['nomorKtp']}',
              icon: Icons.chevron_right_rounded,
              data2: 'Tanggal Lahir: ${passengerData!['tanggalLahir']}',
            ),
            const Divider(),
            const SizedBox(height: 20),
          ] else
            ListTile(
              title: Text(
                'Dewasa 1',
                style: CustomTextStyles.titlesection,
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: onEdit,
            ),
        ],
      ),
    );
  }
}
