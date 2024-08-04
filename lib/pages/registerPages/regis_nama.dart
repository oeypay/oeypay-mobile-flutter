import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_textField.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/registerPages/otp.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

class KonfirmasiNama extends StatefulWidget {
  final String phone;
  const KonfirmasiNama({super.key, required this.phone});

  @override
  _KonfirmasiNamaState createState() => _KonfirmasiNamaState();
}

class _KonfirmasiNamaState extends State<KonfirmasiNama> {
  final _nameController = TextEditingController();
  final _undanganController = TextEditingController();
  final AuthCubit _authCubit = AuthCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: const AppbarDefault(
        title: "Registrasi",
        titleRight: '1/4',
        bgColor: ColorName.yellowColor,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        bloc: _authCubit,
        listener: (context, state) {
          if (state.statusAction.isSuccess()) {
            showSnackBar(context, msg: 'Registrasi berhasil');
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => OTPConfirmationPage(
                        phone: widget.phone,
                      )),
            );
          } else if (state.statusAction.isFailed()) {
            showSnackBar(context, msg: state.message ?? '');
          }
        },
        builder: (context, state) {
          return BodyAuth(
            children: [
              const AuthDesc(
                title: 'Nomor telepon kamu belum terdaftar di OeyPay',
                desc: 'Yuk daftar sekarang',
              ),
              CustomTextField(
                hideIconLeft: false,
                iconSvg: 'user.svg',
                controller: _nameController,
                labelText: 'Nama Lengkap',
                focusedBorderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                errorBorderColor: Colors.transparent,
                focusedErrorBorderColor: Colors.transparent,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nama lengkap dengan benar';
                  }
                  return null;
                },
              ),
              CustomTextField(
                hideIconLeft: false,
                iconSvg: 'grub.svg',
                labelText: 'Kode Undangan (Opsional)',
                controller: _undanganController,
                focusedBorderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                errorBorderColor: Colors.transparent,
                focusedErrorBorderColor: Colors.transparent,
              ),
              ButtonDefault(
                label: "Lanjut",
                isLoading: state.statusAction.isLoading() ? true : false,
                press: () async {
                  String nomorHp = widget.phone.replaceAll('+', '');
                  if (nomorHp.startsWith('62')) {
                    nomorHp = '0${nomorHp.substring(2)}';
                  }
                  _authCubit.signUp(
                    name: _nameController.text,
                    phone: nomorHp,
                    referral: '',
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
