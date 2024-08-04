import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/widget_alur_topup.dart';
import 'package:oepay/common/components/widget_list_hasil_transaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'rincian_data_pesawat.dart';

class ShowModalPenerbangan extends StatefulWidget {
  const ShowModalPenerbangan({super.key});

  @override
  State<ShowModalPenerbangan> createState() => _ShowModalPenerbanganState();
}

class _ShowModalPenerbanganState extends State<ShowModalPenerbangan> {
  // bool _isShow = false;

  // void toggleSelection() {
  //   setState(() {
  //     _isShow = !_isShow;
  //   });
  // }

  int selectedTabIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Detail Tiket',
                    style: CustomTextStyles.titleShowModal,
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            TabBar(
              dividerColor: Colors.transparent,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              indicatorColor: Colors.transparent,
              onTap: onTabTapped,
              tabs: [
                Tab(
                  child: Container(
                    // padding: EdgeInsets.only(left: 5, right: 5),
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == 0
                          ? ColorName.yellowColor
                          : Colors.amber.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Penerbangan',
                        style: CustomTextStyles.titleItem,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == 1
                          ? ColorName.yellowColor
                          : Colors.amber.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Fasilitas',
                        style: CustomTextStyles.titleProfil,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: selectedTabIndex == 2
                          ? ColorName.yellowColor
                          : Colors.amber.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Harga',
                        style: CustomTextStyles.titleProfil,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const TabBarView(
                children: [
                  FlightDetailsTab(),
                  FasilitasPenerbangan(),
                  HargaPenerbangan(),
                ],
              ),
            ),
            const Spacer(),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Harga: ',
                    style: CustomTextStyles.titleProfil,
                  ),
                  Text(
                    'Rp 1.000.000',
                    style:
                        CustomTextStyles.poppins(size: 14, color: Colors.red),
                  ),
                  Text(
                    ' /Orang',
                    style: CustomTextStyles.poppins(
                      size: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: ButtonCustom.filled(
                width: double.infinity,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RincianDataPesawat(),
                    ),
                  );
                },
                label: 'Konfirmasi',
                color: ColorName.yellowColor,
                textColor: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class FlightDetailsTab extends StatelessWidget {
  const FlightDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Durasi Penerbangan',
                style: CustomTextStyles.titlesection,
              ),
              Text('7j 30m', style: CustomTextStyles.titleItem),
            ],
          ),
          // SizedBox(height: 8),

          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(
                    'G-630',
                    style: CustomTextStyles.poppins(
                        size: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Ekonomi',
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
          const FlightSegmentDetails(
            icon: 'assets/icons/landing.png',
            departureCity: 'Jakarta (CGK)',
            departureAirport: 'Soekarno Hatta International Airport',
            departureTime: '12:00',
            duration: '7j 30m',
            arrivalCity: 'Surabaya (SUB)',
            arrivalAirport: 'Juanda, Terminal 1A',
            arrivalTime: '20:00',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class FasilitasPenerbangan extends StatelessWidget {
  const FasilitasPenerbangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(
                    'G-630',
                    style: CustomTextStyles.poppins(
                        size: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Ekonomi',
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          const CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          const CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          const CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          const CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          const CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
        ],
      ),
    );
  }
}

class HargaPenerbangan extends StatelessWidget {
  const HargaPenerbangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              const SizedBox(width: 8),
              Column(
                children: [
                  Text(
                    'G-630',
                    style: CustomTextStyles.poppins(
                        size: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    'Ekonomi',
                    style: CustomTextStyles.titleProfil,
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
          const CustomLis(title: 'Dewasa', deskripsi: 'Rp 1.000.000'),
          const Divider(),
          const CustomLis(title: 'Anak - anak', deskripsi: 'Rp 800.000'),
          const Divider(),
          const CustomLis(title: 'Bayi', deskripsi: 'Rp 500.000'),
          const Divider(),
        ],
      ),
    );
  }
}

class FlightSegmentDetails extends StatelessWidget {
  final String departureCity;
  final String departureAirport;
  final String departureTime;
  final String duration;
  final String arrivalCity;
  final String arrivalAirport;
  final String arrivalTime;
  final String icon;

  const FlightSegmentDetails({
    super.key,
    required this.departureCity,
    required this.departureAirport,
    required this.departureTime,
    required this.duration,
    required this.arrivalCity,
    required this.arrivalAirport,
    required this.arrivalTime,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Image.asset(
              // 'assets/icons/landing.png',
              icon,
              width: 20,
            ),
            const Dash(
              direction: Axis.vertical,
              length: 150,
            ),
            Image.asset(
              // 'assets/icons/mendarat.png',
              icon,
              width: 20,
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          departureCity,
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          departureAirport,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleProfil,
                        ),
                      ],
                    ),
                    Text(
                      departureTime,
                      style: CustomTextStyles.titleItem,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  duration,
                  style: CustomTextStyles.textCard,
                ),
                const SizedBox(height: 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          arrivalCity,
                          style: CustomTextStyles.titlesection,
                        ),
                        Text(
                          arrivalAirport,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleProfil,
                        ),
                      ],
                    ),
                    Text(
                      arrivalTime,
                      style: CustomTextStyles.titleItem,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
