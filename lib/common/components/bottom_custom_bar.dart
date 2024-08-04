import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../pages/home_page/history.dart';
import '../../pages/home_page/home.dart';
import '../../pages/home_page/merchan_page.dart';
import '../../pages/home_page/porfil_screen/profile_page.dart';

class ButtonCustomBar extends StatefulWidget {
  const ButtonCustomBar({super.key});

  @override
  State<ButtonCustomBar> createState() => _ButtonCustomBarState();
}

class _ButtonCustomBarState extends State<ButtonCustomBar> {
  int selected = 0;
  bool heart = false;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ButtomMenus(
      currentIndex: selected,
      controllerBody: controller,
      pressMenus: (index) {
        if (index == selected) return;
        controller.jumpToPage(index);
        setState(() {
          selected = index;
        });
      },
      pressQrCode: () {
        setState(() {
          heart = !heart;
        });
      },
      itemsMenu: [
        BottomBarItem(
          icon: const IconSvgMenu(icon: 'home.svg'),
          title: const TitleMenu(title: 'Beranda'),
        ),
        BottomBarItem(
          icon: const IconSvgMenu(icon: 'badge-percent.svg'),
          title: const TitleMenu(title: 'Merchan'),
        ),
        BottomBarItem(
          icon: const IconSvgMenu(icon: 'time-past.svg'),
          title: const TitleMenu(title: 'Riwayat'),
        ),
        BottomBarItem(
          icon: const IconSvgMenu(icon: 'user.svg'),
          title: const TitleMenu(title: 'Profil'),
        ),
      ],
      itemsBody: const [
        HomePage(),
        Merchanpage(),
        HistoryPage(),
        ProfilePage(),
      ],
    );
  }
}

class ButtomMenus extends StatelessWidget {
  final List<Widget>? itemsBody;
  final List<BottomBarItem>? itemsMenu;
  final void Function()? pressQrCode;
  final PageController? controllerBody;
  final void Function(int)? pressMenus;
  final int? currentIndex;
  const ButtomMenus({
    super.key,
    this.itemsBody,
    this.itemsMenu,
    this.pressQrCode,
    this.pressMenus,
    this.controllerBody,
    this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: Colors.white,
        elevation: 15,
        iconSpace: 1.2,
        option: AnimatedBarOptions(
          iconSize: 32,
          inkColor: Colors.yellow.shade50,
          iconStyle: IconStyle.animated,
        ),
        items: itemsMenu ?? [],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: currentIndex ?? 0,
        notchStyle: NotchStyle.circle,
        onTap: pressMenus,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pressQrCode,
        splashColor: Colors.lightBlue,
        backgroundColor: ColorName.yellowColor,
        elevation: 8.0,
        child: const Icon(
          Icons.qr_code_scanner_outlined,
          color: ColorName.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: controllerBody,
        children: itemsBody ?? [],
      ),
    );
  }
}

class IconSvgMenu extends StatelessWidget {
  final String? icon;
  final double? width;
  const IconSvgMenu({super.key, this.icon, this.width});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$icon',
      height: width ?? 20,
      colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
    );
  }
}

class TitleMenu extends StatelessWidget {
  final String? title;
  const TitleMenu({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
