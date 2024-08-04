import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/bottom_custom_bar.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/components/keyboard.dart';
import 'package:oepay/common/components/pinput.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

class PINProtectionVerifyPage extends StatefulWidget {
  final String phone, otpCode;
  const PINProtectionVerifyPage(
      {super.key, required this.phone, required this.otpCode});
  @override
  _PINProtectionVerifyPageState createState() =>
      _PINProtectionVerifyPageState();
}

class _PINProtectionVerifyPageState extends State<PINProtectionVerifyPage> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();

  final AuthCubit _authCubit = AuthCubit();

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onKeyTap(String value) {
    if (_pinController.text.length < 6) {
      setState(() {
        _pinController.text += value;
      });
    }
  }

  void _onBackspace() {
    if (_pinController.text.isNotEmpty) {
      setState(() {
        _pinController.text =
            _pinController.text.substring(0, _pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: const AppbarDefault(
        title: "Verifikasi PIN Kamu",
        titleRight: '4/4',
        bgColor: ColorName.yellowColor,
      ),
      body: BodyAuth(
        center: true,
        children: [
          const AuthDesc(
            center: true,
            title: 'Masukan kembali PIN yang dibuat sebelumnya',
          ),
          BlocConsumer<AuthCubit, AuthState>(
            bloc: _authCubit,
            listener: (context, state) {
              if (state.statusAction.isSuccess()) {
                showSnackBar(context, msg: 'Berhasil buat pin');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonCustomBar()),
                );
              } else if (state.statusAction.isFailed()) {
                showSnackBar(context, msg: state.message ?? '');
              }
            },
            builder: (context, state) {
              return PinPutDefault(
                controller: _pinController,
                focusNode: _focusNode,
                onCompleted: (pin) {
                  print('PIN entered: $pin');
                  if (widget.otpCode != _pinController.text) {
                    showSnackBar(context,
                        msg:
                            'Verifikasi PIN beda, masukan PIN yang Anda masukan sebelumnya');
                  } else {
                    _authCubit.sendPin(
                        phoneNumber: widget.phone, pin: _pinController.text);
                  }
                },
              );
            },
          ),
          const Space(20),
          CustomKeyboard(
            onKeyTap: _onKeyTap,
            onBackspace: _onBackspace,
          ),
        ],
      ),
    );
  }
}
