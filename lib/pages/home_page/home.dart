import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/grid_components.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/home_page/detail_page_items/content_home_page/banner_page.dart';
import 'package:oepay/pages/home_page/detail_page_items/content_home_page/news_page.dart';
import 'package:oepay/pages/home_page/detail_page_items/content_home_page/rekomendasi_page.dart';
import 'detail_page_items/isi_ulang/isi_ulang_detail.dart';
import 'detail_page_items/listrik/listrik_details.dart';
import 'detail_page_items/penarikan/penarikan_details.dart';
import 'detail_page_items/riwayat/riwayat_detail.dart';
import 'detail_page_items/tiket/pemesanan_tiket_page.dart';
import 'detail_page_items/top_up/virtualAccount/virtual_account_pages.dart';
import 'detail_page_items/transfer/transferDetails.dart';
import 'item_lainnya_page.dart';
import 'notofication_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0.0;

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
              builder: (context) => const PulsaScreen(),
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
              builder: (context) => const ListrikDetails(),
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
              builder: (context) => const PemesananTiketPage(),
            ),
          );
        },
      ),
      CustomGridItem(
        color: Colors.black,
        images: 'assets/icons/house-building.svg',
        title: 'Hotel',
        onTap: () {},
      ),
      CustomGridItem(
        color: Colors.purpleAccent.shade700,
        images: 'assets/icons/insert-credit-card.svg',
        title: 'Pinjaman',
        onTap: () {},
      ),
      CustomGridItem(
        color: Colors.lightBlue.shade800,
        images: 'assets/icons/point-of-sale-bill.svg',
        title: 'Pembayaran',
        onTap: () {},
      ),
      CustomGridItem(
        color: Colors.lightGreen,
        images: 'assets/icons/ticket.svg',
        title: 'Voucher',
        onTap: () {},
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

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification.metrics.axis == Axis.vertical) {
          setState(() {
            _opacity = notification.metrics.pixels / 100;
            _opacity = _opacity.clamp(0.0, 1.0);
          });
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: ColorName.light,
        body: Stack(
          children: [
            BodyContentHomePage(
              saldo: '5.000.000',
              itemsMainMenu: [
                MainMenuItem(
                  label: 'Top Up',
                  iconSvg: 'plus-circle.svg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Virtualaccountpages(),
                      ),
                    );
                  },
                ),
                MainMenuItem(
                  label: 'Transfer',
                  iconSvg: 'expense.svg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TransferDetails(),
                      ),
                    );
                  },
                ),
                MainMenuItem(
                  label: 'Penarikan',
                  iconSvg: 'wallet.svg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Penarikandetails(),
                      ),
                    );
                  },
                ),
                MainMenuItem(
                  label: 'Riwayat',
                  iconSvg: 'paper-plane.svg',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RiwayatPage(),
                      ),
                    );
                  },
                ),
              ],
              itemsMenu: gridItems,
              banner: const BannerPage(),
              news: const NewsPage(),
              rekomendasi: const RekomendasiPage(),
            ),
            NavbarHomePage(
              bgColor: ColorName.yellowColor.withOpacity(_opacity),
              pressBell: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class NavbarHomePage extends StatelessWidget {
  final Color? bgColor;
  final void Function()? pressBell;
  const NavbarHomePage({super.key, this.pressBell, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 55,
          padding:
              const EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            color: bgColor ?? Colors.transparent,
          ),
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
                      builder: (context) => const NotificationsScreen(),
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
      ],
    );
  }
}

class BodyContentHomePage extends StatelessWidget {
  final String? saldo;
  final List<Widget>? itemsMainMenu;
  final Widget? banner, rekomendasi, news;
  final List<CustomGridItem> itemsMenu;
  const BodyContentHomePage(
      {super.key,
      this.saldo,
      this.itemsMainMenu,
      this.banner,
      this.news,
      required this.itemsMenu,
      this.rekomendasi});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 120),
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/oeypay-favicon.svg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 175,
                padding: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  color: ColorName.light.withOpacity(0.7),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Saldo',
                                style: GoogleFonts.rubik(
                                  fontSize: 14.0,
                                  color: const Color(0xff606060),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Space(5),
                              Text(
                                'Rp $saldo',
                                style: GoogleFonts.rubik(
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 0, 0, 51),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/oeypay-favicon.svg',
                                width: 22,
                                colorFilter: const ColorFilter.mode(
                                    Colors.black, BlendMode.srcIn),
                              ),
                              const Space(5),
                              const Text(
                                'Points',
                                style: TextStyle(fontSize: 12, height: 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: itemsMainMenu ?? [],
                ),
              ),
              const SizedBox(height: 20),
              banner ?? const SizedBox(),
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
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: ColorName.light,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      child: CustomGrid(items: itemsMenu),
                    ),
                    news ?? const SizedBox(),
                    const SizedBox(height: 10),
                    rekomendasi ?? const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MainMenuItem extends StatelessWidget {
  final String? label, iconSvg;

  final void Function()? press;
  const MainMenuItem({super.key, this.iconSvg, this.label, this.press});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/$iconSvg',
            width: 24,
          ),
          Text(label ?? '', style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
