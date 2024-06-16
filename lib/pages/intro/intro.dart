import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/registerPages/phoneNumber.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonTextStyle: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      finishButtonText: 'Register',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const PhoneNumberForm(),
          ),
        );
      },
      finishButtonStyle: const FinishButtonStyle(
        backgroundColor: ColorName.yellowColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: ColorName.yellowColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Text(
        'Login',
        style: TextStyle(
          fontSize: 16,
          color: ColorName.yellowColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => const LoginPage(),
        //   ),
        // );
      },
      centerBackground: true,
      controllerColor: ColorName.yellowColor,
      totalPage: 5,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/images/security.jpg',
          height: 350,
        ),
        Image.asset('assets/images/landing.jpg', height: 350),
        Image.asset('assets/images/Bitcoin.png', height: 350),
        Image.asset(
          'assets/images/Credit card-cuate.png',
          height: 350,
        ),
        // Image.asset('assets/images/2942482.jpg', height: 400),
        Image.asset('assets/images/shop.jpg', height: 350),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 450,
              ),
              const Text(
                'Keamanan Mutlak',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorName.kDarkBlueColor,
                  fontSize: 25.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Column(
                children: [
                  Text(
                    'Keamanan Bertingkat,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Standar Internasional',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              const Text(
                'Berbagai Layanan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorName.kDarkBlueColor,
                  fontSize: 25.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Text(
                'Pembayaran pinjaman konsumen, \n Membayar tagihan dan banyak \n layanan lainnya',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueGrey.shade700,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              const Text(
                'Setoran dan penarikan mudah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorName.kDarkBlueColor,
                  fontSize: 25.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Column(
                children: [
                  Text(
                    'Diversifikasi setoran dan tarik uang,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'setoran gratis dengan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'akun bank',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              const Text(
                'Transfer Uang Dengan Cepat',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorName.kDarkBlueColor,
                  fontSize: 25.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Column(
                children: [
                  Text(
                    'Kirim dan terima uang dengan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'cepat hanya perlu nomor telepon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              const Text(
                'Penawaran Menarik',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorName.kDarkBlueColor,
                  fontSize: 25.0,
                  // fontWeight: FontWeight.w300,
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              Column(
                children: [
                  Text(
                    'Dapatkan diskon dan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'promo menarik',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade700,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
