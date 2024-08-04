import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/custom_textField.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/registerPages/pin_login.dart';
import 'package:oepay/pages/registerPages/regis_nama.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final AuthCubit _authCubit = AuthCubit();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: const AppbarDefault(
        title: "Registrasi / Masuk",
        bgColor: ColorName.yellowColor,
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        bloc: _authCubit,
        listener: (context, state) {
          if (state.statusAction.isSuccess()) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => KonfirmasiNama(
                  phone: _phoneController.text,
                ),
              ),
            );
          } else if (state.statusAction.isFailed()) {
            // showSnackBar(context,
            //     msg: state.phoneNumberModel?.message.toString());
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PinLoginPage(
                  phone: _phoneController.text,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          debugPrint(state.statusAction.toString());
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
                isLoading: state.statusAction.isLoading() ? true : false,
                press: () async {
                  if (_phoneController.text.isEmpty) {
                    showSnackBar(context,
                        msg: 'Nomor Telephone / WhatsApp tidak boleh kosong');
                  } else {
                    _authCubit.checkPhoneNumber(
                        phoneNumber: _phoneController.text);
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
