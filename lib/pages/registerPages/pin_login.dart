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

class PinLoginPage extends StatefulWidget {
  final String phone;
  const PinLoginPage({super.key, required this.phone});

  @override
  State<PinLoginPage> createState() => _PinLoginPageState();
}

class _PinLoginPageState extends State<PinLoginPage> {
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
        title: "Masukan PIN Kamu",
        bgColor: ColorName.yellowColor,
      ),
      body: BodyAuth(
        center: true,
        children: [
          AuthDesc(
            center: true,
            title: 'Lupa PIN?',
          ),
          BlocConsumer<AuthCubit, AuthState>(
            bloc: _authCubit,
            listener: (context, state) {
              if (state.status.isSuccess()) {
                showSnackBar(context, msg: 'Berhasil login');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonCustomBar()),
                );
              } else if (state.status.isFailed()) {
                // showSnackBar(context, msg: state.message ?? 'PIN Salah');
                showSnackBar(context, msg: 'PIN Salah');
              }
            },
            builder: (context, state) {
              return PinPutDefault(
                controller: _pinController,
                focusNode: _focusNode,
                onCompleted: (pin) {
                  print('PIN entered: $pin');
                  if (_pinController.text.isEmpty) {
                    showSnackBar(context, msg: 'Masukan PIN');
                  } else {
                    _authCubit.signIn(
                        phone: widget.phone, pin: _pinController.text);
                  }
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
