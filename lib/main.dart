// import 'package:example/screens/login_page.dart';
// import 'package:example/screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/bottom_custom_bar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/resources/auth/bloc/pin/pin_bloc.dart';
import 'package:oepay/resources/auth/bloc/register/register_bloc.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';
import 'package:oepay/resources/dataSource/auth_remote_data_source.dart';
import 'package:oepay/pages/intro/intro.dart';
import 'package:oepay/pages/registerPages/phone_number.dart';

import 'resources/auth/bloc/category/category_bloc.dart';
import 'resources/auth/bloc/kodeOTP/kode_otp_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => RegisterBloc(Authremotedatasource())),
        BlocProvider(
            create: (context) =>
                CategoryBloc()..add(const CategoryEvent.getAll())),
        BlocProvider(create: (context) => KodeOtpBloc(Authremotedatasource())),
        BlocProvider(create: (context) => PinBloc(Authremotedatasource())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          splashColor: ColorName.light,
          inputDecorationTheme: InputDecorationTheme(
            focusColor: Colors.black45,
            labelStyle: TextStyle(color: Colors.black54),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            shape: CircleBorder(),
          ),
        ),
        home: PhoneNumberForm(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
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

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset(0.0, -1.0), // Mulai dari atas layar
      end: Offset(0.0, 0.0), // Berakhir di posisi aslinya
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

    _controller.forward().then((_) {
      // Navigate to the next page after the animation completes
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Introduction()),
        );
      });
    });
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
      body: Center(
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
                  SizedBox(height: 10),
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
              child: Text(
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
      ),
    );
  }
}
