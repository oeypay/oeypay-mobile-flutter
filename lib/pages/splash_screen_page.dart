import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/register_pages/pin_login.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

import 'register_pages/phone_number.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();

    context.read<AuthCubit>().getUser();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0), // Mulai dari atas layar
      end: const Offset(0.0, 0.0), // Berakhir di posisi aslinya
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut,
      ),
    );

    _textAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutExpo,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ColorName.yellowColor, // Sesuaikan warna sesuai kebutuhan
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status.isSuccess()) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PinLoginPage(
                        phone: state.userModel?.user?.phone ?? '',
                      )),
            );
          } else if (state.status.isFailed()) {
            _controller.forward().then((_) {
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => const PhoneNumberForm()),
                  // MaterialPageRoute(builder: (context) => const Introduction()),
                );
              });
            });
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SlideTransition(
                  position: _slideAnimation,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/oeypay-favicon.svg',
                        color: Colors.black,
                        width: 130,
                      ),
                      const SizedBox(height: 10),
                      SvgPicture.asset(
                        'assets/icons/logo.svg',
                        color: Colors.black,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                FadeTransition(
                  opacity: _textAnimation,
                  child: const Text(
                    'KEMUDAHAN DALAM GENGGAMAN',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
