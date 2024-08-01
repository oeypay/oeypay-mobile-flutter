import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/app_bar.dart';
import 'package:oepay/common/components/body_auth.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/components/flushbar.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/otp.dart';
import 'package:oepay/resources/cubit/auth/auth_cubit.dart';

import '../../resources/auth/bloc/kodeOTP/kode_otp_bloc.dart';
import '../../resources/auth/bloc/register/register_bloc.dart';
import '../../resources/models/requests/otp_request_model.dart';
import '../../resources/models/requests/register_request_model.dart';

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
  bool? isLoading = false;
  // @override
  // void dispose() {
  //   _nameController.dispose();
  //   super.dispose();
  // }

  // void _submitForm() {
  //   if (_nameController.text.isEmpty) {
  //     showSnackBar(context, msg: 'Nama Lengkap tidak boleh kosong');
  //   } else {
  //     if (_formKey.currentState!.validate()) {
  //       final RegisterRequestModel requestModel = RegisterRequestModel(
  //         name: _nameController.text,
  //         phone: widget.phone,
  //       );

  //       // Mengirim data ke RegisterBloc untuk menyimpan nama
  //       context.read<RegisterBloc>().add(
  //             RegisterEvent.register(
  //               requestModel: requestModel,
  //             ),
  //           );

  //       // Setelah berhasil menyimpan nama, kirim OTP
  //       context.read<KodeOtpBloc>().add(
  //             KodeOtpEvent.sendOTP(
  //               otpRequestModel: OTPRequestModel(
  //                 phone: widget.phone,
  //               ),
  //             ),
  //           );
  //     }
  //   }
  // }

  // void handleError(String errorResponse) {
  //   final Map<String, dynamic> errorData = jsonDecode(errorResponse);
  //   final String errorMessage = errorData['message'] ?? 'An error occurred';

  //   setState(() {
  //     _errorMessage = errorMessage; // Update the error message
  //   });
  // }

  // void handleSuccess(String successResponse) {
  //   final Map<String, dynamic> successData = jsonDecode(successResponse);
  //   final String message = successData['message'] ?? 'No message available';

  //   setState(() {
  //     _message = message; // Update the state with the message
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppbarDefault(
        title: "Registrasi",
        titleRight: '1/3',
        bgColor: ColorName.yellowColor,
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.statusAction.isSuccess()) {
            showSnackBar(context, msg: state.message ?? '');
            setState(() {
              isLoading = false;
            });
          } else if (state.statusAction.isFailed()) {
            showSnackBar(context, msg: state.message ?? '');
            setState(() {
              isLoading = false;
            });
          }
        },
        builder: (context, state) {
          return BodyAuth(
            children: [
              AuthDesc(
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
                isLoading: isLoading,
                press: () async {
                  setState(() {
                    isLoading = true;
                  });
                  String nomorHp = widget.phone.replaceAll('+', '');
                  if (nomorHp.startsWith('62')) {
                    nomorHp = '0${nomorHp.substring(2)}';
                  }
                  _authCubit.signUp(
                    name: _nameController.text,
                    phone: nomorHp,
                    referral: _undanganController.text,
                  );
                },
              ),

              // BlocListener<RegisterBloc, RegisterState>(
              //   listener: (context, state) {
              //     state.maybeWhen(
              //       orElse: () {},
              //       success: (responseModel) {
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //             content: Text('Nama berhasil diupdate'),
              //             backgroundColor: Colors.greenAccent,
              //           ),
              //         );
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => OTPConfirmationPage(
              //               phone: widget.phone,
              //             ),
              //           ),
              //         );
              //         print(_message);
              //       },
              //       error: (msg) {
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //             content: Text('Gagal mengupdate nama $msg'),
              //             backgroundColor: Colors.redAccent,
              //           ),
              //         );
              //         print(msg);
              //         print(_errorMessage);
              //       },
              //     );
              //   },
              //   child: BlocBuilder<RegisterBloc, RegisterState>(
              //     builder: (context, state) {
              //       return state.maybeWhen(
              //         orElse: () {
              //           return ButtonDefault(
              //             label: "Lanjut",
              //             press: () => _submitForm,
              //           );
              //           // SizedBox(
              //           //   width: double.infinity,
              //           //   child: ElevatedButton(
              //           //     style: ElevatedButton.styleFrom(
              //           //       padding: const EdgeInsets.all(15),
              //           //       backgroundColor: Colors.black,
              //           //       shape: RoundedRectangleBorder(
              //           //         borderRadius: BorderRadius.circular(20),
              //           //       ),
              //           //     ),
              //           //     onPressed: _submitForm,
              //           //     child: Text(
              //           //       'Lanjut',
              //           //       style: CustomTextStyles.poppins(
              //           //         size: 18,
              //           //         fontWeight: FontWeight.bold,
              //           //         color: Colors.white,
              //           //       ),
              //           //     ),
              //           //   ),
              //           // );
              //         },
              //         loading: () {
              //           return Center(
              //             child: CircularProgressIndicator(),
              //           );
              //         },
              //       );
              //     },
              //   ),
              // ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
