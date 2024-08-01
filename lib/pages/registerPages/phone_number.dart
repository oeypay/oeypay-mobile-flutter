import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/registerPages/regis_nama.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final _phoneController = TextEditingController();
  bool? isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppbarDefault(
        title: "Registrasi / Masuk",
        bgColor: ColorName.yellowColor,
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.statusAction.isSuccess()) {
            var numberPhone = state.phoneNumberModel;
            numberPhone?.status == 400
                ? showSnackBar(context, msg: 'terdaftar')
                // : showSnackBar(context, msg: 'belum terdaftar');
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KonfirmasiNama(
                              phone: _phoneController.text,
                            )),
                  );
            setState(() {
              isLoading = false;
            });
          } else if (state.status.isFailed()) {
            var numberPhone = state.phoneNumberModel;
            showSnackBar(context,
                msg: 'Gagal - ${state.message} - ${numberPhone?.status}');
            setState(() {
              isLoading = false;
            });
          }
        },
        builder: (context, state) {
          return BodyAuth(
            children: [
              CustomTextField(
                hideIconLeft: false,
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                labelText: 'Nomor Telephone / WhatsApp',
                focusedBorderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                errorBorderColor: Colors.transparent,
                focusedErrorBorderColor: Colors.transparent,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan nomor telepon yang valid';
                  }
                  if (value.length < 10) {
                    return 'Nomor telepon terlalu pendek';
                  }
                  return null;
                },
              ),
              ButtonDefault(
                label: "Lanjut",
                isLoading: isLoading,
                press: () async {
                  if (_phoneController.text.isEmpty) {
                    showSnackBar(context,
                        msg: 'Nomor Telephone / WhatsApp tidak boleh kosong');
                  } else {
                    setState(() {
                      isLoading = true;
                    });
                    context
                        .read<AuthCubit>()
                        .checkPhoneNumber(phoneNumber: _phoneController.text);
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
