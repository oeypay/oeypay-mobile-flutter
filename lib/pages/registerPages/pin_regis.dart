import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/bottomCustomBar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:pinput/pinput.dart';

import '../../resources/auth/bloc/pin/pin_bloc.dart';
import '../../resources/models/requests/pin_request_model.dart';

class PINProtectionPage extends StatefulWidget {
  final String phone;

  const PINProtectionPage({super.key, required this.phone});
  @override
  _PINProtectionPageState createState() => _PINProtectionPageState();
}

class _PINProtectionPageState extends State<PINProtectionPage> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _sendPin() {
    if (_formKey.currentState!.validate()) {
      final PinRequestModel requestModel = PinRequestModel(
        pin: _pinController.text,
        phone: widget.phone,
      );

      context.read<PinBloc>().add(
            PinEvent.sendPin(
              requestModel: requestModel,
            ),
          );
    }
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buat PIN Kamu',
              style: CustomTextStyles.verifikasiTitle,
            ),
            Text(
              '3/3',
              style: CustomTextStyles.titleItem,
            ),
          ],
        ),
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
              'PIN ini untuk keamanan transaksi dan akun OeyPay',
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins(
                size: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            BlocListener<PinBloc, PinState>(
              listener: (context, state) {
                // TODO: implement listener
                state.maybeWhen(
                  orElse: () {},
                  success: (response) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('PIN Berhasil di Buat'),
                        backgroundColor: Colors.green,
                        duration:
                            Duration(seconds: 2), // Durasi tampilnya snackbar
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ButtonCustomBar(),
                      ),
                    );
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Gagal memverifikasi OTP $message'),
                        backgroundColor: Colors.redAccent,
                      ),
                    );
                    print(message);
                  },
                );
              },
              child: BlocBuilder<PinBloc, PinState>(
                builder: (context, state) {
                  return Pinput(
                    length: 6,
                    animationCurve: Curves.bounceIn,
                    animationDuration: Durations.long1,
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
                        color: Colors
                            .black, // Latar belakang hitam setelah dikirim
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onCompleted: (pin) {
                      print('PIN entered: $pin');
                      _sendPin();

                      // Implementasikan logika validasi PIN di sini
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
