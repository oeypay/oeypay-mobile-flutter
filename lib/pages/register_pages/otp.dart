import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/register_pages/pin_regis.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';
import 'package:pinput/pinput.dart';

class OTPConfirmationPage extends StatefulWidget {
  final String phone;
  const OTPConfirmationPage({super.key, required this.phone});
  @override
  _OTPConfirmationPageState createState() => _OTPConfirmationPageState();
}

class _OTPConfirmationPageState extends State<OTPConfirmationPage> {
  final _otpController = TextEditingController();
  final AuthCubit _authCubit = AuthCubit();
  final _focusNode = FocusNode();
  int _remainingTime = 30;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _otpController.dispose();
    _focusNode.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 45,
      height: 45,
      textStyle: const TextStyle(
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
      appBar: const AppbarDefault(
        title: "OTP",
        titleRight: '2/4',
        bgColor: ColorName.yellowColor,
      ),
      body: BodyAuth(
        children: [
          AuthDesc(
            title: 'Verifikasi lewat SMS',
            desc:
                'Masukan kode verifikasi (OTP) yang dikirim lewat SMS ke nomor kamu ${widget.phone}',
          ),
          BlocConsumer<AuthCubit, AuthState>(
            bloc: _authCubit,
            listener: (context, state) {
              if (state.statusAction.isSuccess()) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PINProtectionPage(
                            phone: widget.phone,
                          )),
                );
              } else if (state.statusAction.isFailed()) {
                showSnackBar(context, msg: state.message ?? '');
              }
            },
            builder: (context, state) {
              return Pinput(
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
                  _authCubit.verifyOtp(
                      phoneNumber: widget.phone, otpCode: _otpController.text);
                },
              );
            },
          ),
          const Space(30),
          Center(
            child: Text(
              'Tidak Menerima OTP ?',
              style: CustomTextStyles.poppins(
                size: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Space(5),
          if (_remainingTime == 0)
            Center(
              child: InkWell(
                onTap: () async {
                  _remainingTime == 0
                      ? context
                          .read<AuthCubit>()
                          .resendOtp(phoneNumber: widget.phone)
                      : null;
                  setState(() {
                    _remainingTime = 30;
                  });
                  _startCountdown();
                },
                child: Text(
                  'Kirim Ulang',
                  style: CustomTextStyles.poppins(
                    size: 15,
                    color: _remainingTime != 0 ? Colors.blueGrey : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          const Space(5),
          if (_remainingTime != 0)
            Center(
              child: Text(
                'Kirim ulang dalam $_remainingTime detik',
                style: CustomTextStyles.poppins(
                  size: 13,
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
