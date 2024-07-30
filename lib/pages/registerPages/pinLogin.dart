import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/bottomCustomBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:pinput/pinput.dart';

class PINLogin extends StatefulWidget {
  @override
  _PINLoginState createState() => _PINLoginState();
}

class _PINLoginState extends State<PINLogin> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
    );

    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Masukkan PIN Kamu'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/oeypay-favicon.svg',
                color: Colors.black,
                width: 85,
              ),
            ),
            SizedBox(height: 45),
            Text(
              'Lupa PIN?',
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins(
                size: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Pinput(
              length: 6,
              controller: _pinController,
              focusNode: _focusNode,
              obscureText: true, // Menyembunyikan angka yang dimasukkan
              obscuringWidget: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ), // Ganti dengan warna latar belakang hitam
              ),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: Colors.black, // Latar belakang hitam setelah dikirim
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onCompleted: (pin) {
                print('PIN entered: $pin');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('PIN Berhasil di Buat'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 2), // Durasi tampilnya snackbar
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtonCustomBar(),
                  ),
                );
                // Implementasikan logika validasi PIN di sini
              },
            ),
          ],
        ),
      ),
    );
  }
}
