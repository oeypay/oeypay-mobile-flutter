import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/HomePage/Home.dart';
import 'package:oepay/pages/HomePage/ProfilePage.dart';
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
      // extendBody: true, //to make floating action button notch transparent
      bottomNavigationBar: StylishBottomBar(
        backgroundColor: const Color.fromARGB(229, 255, 255, 255),
        // elevation: 10,
        iconSpace: 1.2,
        option: AnimatedBarOptions(
          iconSize: 32,
          inkColor: Colors.yellow.shade50,
          inkEffect: true,
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.animated,
          opacity: 0.5,
        ),
        items: [
          BottomBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.house,
              size: 25,
              // color: Colors.grey,
            ),
            selectedIcon: const FaIcon(
              FontAwesomeIcons.house,
              size: 25,
              color: ColorName.yellowColor,
            ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Home',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 191, 0)),
            ),
          ),
          BottomBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.squarePollVertical,
              size: 25,
              // color: Colors.grey,
            ),
            selectedIcon: const FaIcon(
              FontAwesomeIcons.squarePollVertical,
              size: 25,
              color: ColorName.yellowColor,
            ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Activity',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 191, 0)),
            ),
          ),
          BottomBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.solidCreditCard,
              size: 25,
              // color: Colors.grey,
            ),
            selectedIcon: const FaIcon(
              FontAwesomeIcons.solidCreditCard,
              size: 25,
              color: ColorName.yellowColor,
            ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Merchan',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 191, 0)),
            ),
          ),
          BottomBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.solidCircleUser,
              size: 25,
              // color: Colors.grey,
            ),
            selectedIcon: const FaIcon(
              FontAwesomeIcons.solidCircleUser,
              size: 25,
              color: ColorName.yellowColor,
            ),
            selectedColor: ColorName.yellowColor,
            unSelectedColor: Colors.black54,
            title: const Text(
              'Profile',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 255, 191, 0)),
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
          Center(child: Text('Activity')),
          Center(child: Text('Merchan')),
          ProfilePage(),
        ],
      ),
    );
  }
}
