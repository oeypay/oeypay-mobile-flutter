import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/history.dart';
import 'package:oepay/pages/HomePage/home.dart';
import 'package:oepay/pages/HomePage/merchan_page.dart';
import 'package:oepay/pages/HomePage/porfilScreen/ProfilePage.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

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
    return Scaffold(
      extendBody: true, //to make floating action button notch transparent
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: Color(0xffFEF7dd),
        // backgroundColor: Colors.indigo,
        elevation: 1,
        iconSpace: 1.2,
        option: AnimatedBarOptions(
          iconSize: 32,
          inkColor: Colors.yellow.shade50,
          // inkEffect: true,
          // barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          // opacity: 0.5,
        ),
        items: [
          BottomBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 25,
              color: Colors.black45,
            ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Home',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              'assets/icons/badge-percent.svg',
              width: 25,
              color: Colors.black45,
            ),
            // selectedIcon: Image.asset(
            //   'assets/images/merchant.png',
            //   color: Colors.pink,
            // ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Merchan',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              'assets/icons/time-past.svg',
              width: 25,
              color: Colors.black45,
            ),
            unSelectedColor: Colors.black54,
            title: const Text(
              'History',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          BottomBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              width: 25,
              color: Colors.black45,
            ),
            // selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Profile',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        notchStyle: NotchStyle.circle,
        onTap: (index) {
          if (index == selected) return;
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            heart = !heart;
          });
        },
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
        controller: controller,
        children: const [
          HomePage(),
          Merchanpage(),
          HistoryPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
