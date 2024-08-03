import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/grid_components.dart';
import 'package:oepay/common/components/rekomendasi_pilihan.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'detail_page_items/isi_ulang/isi_ulang_detail.dart';
import 'detail_page_items/listrik/listrik_details.dart';
import 'detail_page_items/penarikan/penarikan_details.dart';
import 'detail_page_items/riwayat/riwayat_detail.dart';
import 'detail_page_items/tiket/pemesanan_tiket.dart';
import 'detail_page_items/topUp/virtualAccount/virtual_account_pages.dart';
import 'detail_page_items/transfer/transferDetails.dart';
import 'item_lainnya_page.dart';
import 'notofication_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Mengatur warna status bar ketika halaman diinisialisasi
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorName.light, // Warna background status bar
        statusBarIconBrightness: Brightness.light, // Warna ikon status bar
      ),
    );
  }

  final List<String> images = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/banner3.png",
  ];

  @override
  Widget build(BuildContext context) {
    final List<CustomGridItem> gridItems = [
      CustomGridItem(
        color: Colors.redAccent,
        images: 'assets/icons/point-of-sale-signal.svg',
        title: 'Isi Ulang',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PulsaScreen(),
            ),
          );
        },
      ),
      CustomGridItem(
        color: Colors.amber,
        images: 'assets/icons/lightbulb-on.svg',
        title: 'Listrik',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListrikDetails(),
            ),
          );
        },
      ),
      CustomGridItem(
        color: Colors.teal,
        images: 'assets/icons/ticket-airline.svg',
        title: 'Tiket',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PemesananTiketPage(),
            ),
          );
        },
      ),
      CustomGridItem(
        color: Colors.black,
        images: 'assets/icons/house-building.svg',
        title: 'Hotel',
        onTap: () {
          print('Pulsa tapped');
        },
      ),
      CustomGridItem(
        color: Colors.purpleAccent.shade700,
        images: 'assets/icons/insert-credit-card.svg',
        title: 'Pinjaman',
        onTap: () {
          print('Kredit tapped');
        },
      ),
      CustomGridItem(
        color: Colors.lightBlue.shade800,
        images: 'assets/icons/point-of-sale-bill.svg',
        title: 'Pembayaran',
        onTap: () {
          print('Tagihan tapped');
        },
      ),
      CustomGridItem(
        color: Colors.lightGreen,
        images: 'assets/icons/ticket.svg',
        title: 'Voucher',
        onTap: () {
          print('Voucher tapped');
        },
      ),
      CustomGridItem(
        color: Colors.pink,
        images: 'assets/icons/apps.svg',
        title: 'Lainnya',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ItemLainnyaPage(),
            ),
          );
        },
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorName.light,
        body: Stack(
          children: [
            SvgPicture.asset(
              'assets/icons/oeypay-favicon.svg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 180, left: 15, right: 15),
                    width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.only(left: 10, right: 10),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Virtualaccountpages(),
                              ),
                            );
                          },
                          child: const Column(
                            children: [
                              Icon(Icons.add_circle_outline_outlined, size: 30),
                              Text('TopUp', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferDetails(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/expense.svg',
                                width: 30,
                              ),
                              const Text('Transfer',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Penarikandetails(),
                              ),
                            );
                          },
                          child: const Column(
                            children: [
                              Icon(Icons.account_balance_wallet_outlined,
                                  size: 30),
                              Text('Penarikan', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RiwayatPage(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/paper-plane.svg',
                                width: 25,
                              ),
                              // Image.asset(
                              //   'assets/icons/paper-plane.svg',
                              //   width: 30,
                              // ),
                              const Text('Riwayat',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),

                        // Column(
                        //   children: [
                        //     SvgPicture.asset(
                        //       'assets/icons/expense.svg',
                        //       width: 25,
                        //     ),
                        //     const Text('Minta', style: TextStyle(fontSize: 12)),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 120,
                      autoPlay: false,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.7,
                    ),
                    items: images.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            height: 120,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(imagePath),
                                fit: BoxFit
                                    .contain, // Mengatur gambar agar tidak tercrop
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment List',
                          style: CustomTextStyles.titlesection,
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: ColorName.light,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                          child: CustomGrid(items: gridItems),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Promo & Discount',
                          style: CustomTextStyles.titlesection,
                        ),
                        const SizedBox(height: 10),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 120.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 10,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                          items: images.map((imagePath) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(imagePath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 15),
                        RekomendasiPilihan(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white, // Sesuaikan warna border
                      width: 1.0, // Sesuaikan lebar border
                    ),
                  ),
                  color: ColorName.light.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logo.svg',
                            width: 100,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationsScreen(),
                                ),
                              );
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.solidBell,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                'Total Saldo',
                                style: GoogleFonts.rubik(
                                  fontSize: 14.0,
                                  color: Color(0xff606060),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Rp 5.000.000',
                                style: GoogleFonts.rubik(
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 0, 0, 51),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/oeypay-favicon.svg',
                                width: 22,
                                color: Colors.black,
                              ),
                              // Image.asset(
                              //   'assets/icons/paper-plane.svg',
                              //   width: 30,
                              // ),
                              const Text(
                                'Points',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
