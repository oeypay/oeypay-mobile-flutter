import 'package:banner_carousel/banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/gridComponents.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/ItemLainnyaPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
  ];

  @override
  Widget build(BuildContext context) {
    final List<CustomGridItem> gridItems = [
      CustomGridItem(
        color: Colors.redAccent,
        images: 'assets/images/wifi-square.png',
        title: 'Internet',
        onTap: () {
          print('Internet tapped');
        },
      ),
      CustomGridItem(
        color: Colors.amber,
        images: 'assets/images/flashh.png',
        title: 'Listrik',
        onTap: () {
          print('Listrik tapped');
        },
      ),
      CustomGridItem(
        color: Colors.lightGreen,
        images: 'assets/images/ticket.png',
        title: 'Voucher',
        onTap: () {
          print('Voucher tapped');
        },
      ),
      CustomGridItem(
        color: Colors.black,
        images: 'assets/images/phone.png',
        title: 'Pulsa',
        onTap: () {
          print('Pulsa tapped');
        },
      ),
      CustomGridItem(
        color: Colors.purpleAccent.shade700,
        images: 'assets/images/mobile.png',
        title: 'Kredit',
        onTap: () {
          print('Kredit tapped');
        },
      ),
      CustomGridItem(
        color: Colors.lightBlue.shade800,
        images: 'assets/images/receipt-text.png',
        title: 'Tagihan',
        onTap: () {
          print('Tagihan tapped');
        },
      ),
      CustomGridItem(
        color: Colors.teal,
        images: 'assets/images/topup.png',
        title: 'Help',
        onTap: () {
          print('Help tapped');
        },
      ),
      CustomGridItem(
        color: Colors.pink,
        images: 'assets/images/category.png',
        title: 'Lainnya',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Itemlainnyapage(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.userAstronaut,
                      size: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.solidBell,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Text(
                'Total Saldo',
                style: CustomTextStyles.verifikasiTitle,
              ),
              Text(
                'Rp 5.000.000',
                style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    color: const Color.fromARGB(255, 0, 0, 51),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        Text(
                          'Payment List',
                          style: CustomTextStyles.titlesection,
                        ),
                        CustomGrid(items: gridItems),
                        const SizedBox(height: 20),
                        Text(
                          'Promo & Discount',
                          style: CustomTextStyles.titlesection,
                        ),
                        const SizedBox(height: 10),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 160.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
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
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 20,
            right: 20,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add_circle,
                          color: ColorName.yellowColor, size: 30),
                      Text('Topup', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.send, color: ColorName.yellowColor, size: 30),
                      Text('Send', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.request_page,
                          color: ColorName.yellowColor, size: 30),
                      Text('Request', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.history,
                          color: ColorName.yellowColor, size: 30),
                      Text('History', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BannerImages {
  static const String banner1 = "assets/images/1.png";
  static const String banner2 = "assets/images/2.png";
  static const String banner3 = "assets/images/3.png";
  static const String banner4 = "assets/images/4.png";

  // static List<BannerModel> listBanners = [
  //   BannerModel(imagePath: banner1, id: "1"),
  //   BannerModel(imagePath: banner2, id: "2"),
  //   BannerModel(imagePath: banner3, id: "3"),
  //   BannerModel(imagePath: banner4, id: "4"),
  // ];
}
