import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/widgetAlurTopUp.dart';
import 'package:oepay/common/components/widgetListHasilTransaksi.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/tiket/rincianData.dart';

class ShowModalPenerbangan extends StatefulWidget {
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
      decoration: BoxDecoration(
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
                    icon: Icon(Icons.close),
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
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TabBarView(
                children: [
                  FlightDetailsTab(),
                  FasilitasPenerbangan(),
                  HargaPenerbangan(),
                ],
              ),
            ),
            Spacer(),
            Divider(),
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
                      builder: (context) => RincianDataPages(),
                    ),
                  );
                },
                label: 'Konfirmasi',
                color: ColorName.yellowColor,
                textColor: Colors.black,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class FlightDetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
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

          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              SizedBox(width: 8),
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
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icons/landing.png',
                    width: 20,
                  ),
                  Dash(
                    direction: Axis.vertical,
                    length: 150,
                  ),
                  Image.asset(
                    'assets/icons/mendarat.png',
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
                                'Jakarta (CGK)',
                                style: CustomTextStyles.titlesection,
                              ),
                              Text(
                                'Soekarno-Hatta International Airport',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleProfil,
                              ),
                            ],
                          ),
                          Text(
                            '12:00',
                            style: CustomTextStyles.titleItem,
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Text(
                        '7j 30m',
                        style: CustomTextStyles.textCard,
                      ),
                      SizedBox(height: 50),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Surabaya (SBY)',
                                style: CustomTextStyles.titlesection,
                              ),
                              Text(
                                'Soekarno-Hatta International Airport',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleProfil,
                              ),
                            ],
                          ),
                          Text(
                            '12:00',
                            style: CustomTextStyles.titleItem,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(),
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
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              SizedBox(width: 8),
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
          Divider(),
          SizedBox(height: 10),
          CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
          CustomListTitle(title: '   Kapasitas Bagasi - 20 Kg'),
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
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icons/garuda.png', width: 50),
              SizedBox(width: 8),
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
          Divider(),
          CustomLis(title: 'Dewasa', deskripsi: 'Rp 1.000.000'),
          Divider(),
          CustomLis(title: 'Anak - anak', deskripsi: 'Rp 800.000'),
          Divider(),
          CustomLis(title: 'Bayi', deskripsi: 'Rp 500.000'),
          Divider(),
        ],
      ),
    );
  }
}
