import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/pinRegis.dart';
import 'package:pinput/pinput.dart';

class OTPConfirmationPage extends StatefulWidget {
  @override
  _OTPConfirmationPageState createState() => _OTPConfirmationPageState();
}

class _OTPConfirmationPageState extends State<OTPConfirmationPage> {
  final _otpController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _otpController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 45,
      height: 45,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'OTP',
              style: CustomTextStyles.verifikasiTitle,
            ),
            Text(
              '2/3',
              style: CustomTextStyles.titleItem,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                'Verifikasi lewat SMS',
                style: CustomTextStyles.titleShowModal,
              ),
              SizedBox(height: 10),
              Text(
                'Masukan kode verifikasi (OTP) yang dikirim lewat SMS ke nomor kamu 08288293828',
                style: CustomTextStyles.textNominal,
              ),
              SizedBox(height: 30),
              Center(
                child: Pinput(
                  length: 6,
                  controller: _otpController,
                  focusNode: _focusNode,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return 'Kode OTP harus terdiri dari 6 digit';
                    }
                    return null;
                  },
                  onCompleted: (pin) {
                    print('OTP entered: $pin');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Verifikasi Berhasil'),
                        backgroundColor: Colors.green,
                        duration:
                            Duration(seconds: 2), // Durasi tampilnya snackbar
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PINProtectionPage(),
                      ),
                    );
                    // Implement your OTP verification logic here
                  },
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Tidak Menerima OTP ? ',
                  style: CustomTextStyles.poppins(
                    size: 15,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  'Kirim Ulang',
                  style: CustomTextStyles.poppins(
                    size: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  'Kirim ulang dalam 30 detik',
                  style: CustomTextStyles.poppins(
                    size: 13,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
