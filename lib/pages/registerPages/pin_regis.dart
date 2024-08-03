import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/components/keyboard.dart';
import 'package:oepay/common/components/pinput.dart';
import 'package:oepay/common/components/space.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/registerPages/pin_regis_verify.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

class PINProtectionPage extends StatefulWidget {
  final String phone;

  const PINProtectionPage({super.key, required this.phone});
  @override
  _PINProtectionPageState createState() => _PINProtectionPageState();
}

class _PINProtectionPageState extends State<PINProtectionPage> {
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
      appBar: AppbarDefault(
        title: "Buat PIN Kamu",
        titleRight: '3/4',
        bgColor: ColorName.yellowColor,
      ),
      body: BodyAuth(
        center: true,
        children: [
          AuthDesc(
            center: true,
            title: 'PIN ini untuk keamanan transaksi dan akun OeyPay',
          ),
          BlocConsumer<AuthCubit, AuthState>(
            bloc: _authCubit,
            listener: (context, state) {
              if (state.statusAction.isSuccess()) {
                showSnackBar(context, msg: 'Berhasil buat pin');
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PINProtectionVerifyPage(
                              phone: widget.phone,
                              otpCode: _pinController.text,
                            )),
                  );
                },
              );
            },
          ),
          Space(20),
          CustomKeyboard(
            onKeyTap: _onKeyTap,
            onBackspace: _onBackspace,
          ),
        ],
      ),
    );
  }
}
