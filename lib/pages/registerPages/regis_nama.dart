import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/otp.dart';

import '../../data/auth/bloc/kodeOTP/kode_otp_bloc.dart';
import '../../data/auth/bloc/register/register_bloc.dart';
import '../../data/models/requests/otpRequestModel.dart';
import '../../data/models/requests/registerRequestModel.dart';

class KonfirmasiNama extends StatefulWidget {
  final String phone;
  const KonfirmasiNama({super.key, required this.phone});

  @override
  _KonfirmasiNamaState createState() => _KonfirmasiNamaState();
}

class _KonfirmasiNamaState extends State<KonfirmasiNama> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final RegisterRequestModel requestModel = RegisterRequestModel(
        name: _nameController.text,
        phone: widget.phone,
      );

      // Mengirim data ke RegisterBloc untuk menyimpan nama
      context.read<RegisterBloc>().add(
            RegisterEvent.register(
              requestModel: requestModel,
            ),
          );

      // Setelah berhasil menyimpan nama, kirim OTP
      context.read<KodeOtpBloc>().add(
            KodeOtpEvent.sendOTP(
              otpRequestModel: OTPRequestModel(
                phone: widget.phone,
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        // automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Registrasi',
              style: CustomTextStyles.verifikasiTitle,
            ),
            Text(
              '1/3',
              style: CustomTextStyles.titleItem,
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: SvgPicture.asset(
                    'assets/icons/oeypay-favicon.svg',
                    color: Colors.black,
                    width: 85,
                  ),
                ),
                const SizedBox(height: 45),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Nomor telepon kamu belum terdaftar di OeyPay',
                    style: CustomTextStyles.titleShowModal,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Yuk daftar sekarang',
                  style: CustomTextStyles.textNominal,
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        'assets/icons/user.svg',
                        color: Colors.black54,
                        width: 15,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          controller: _nameController,
                          labelText: 'Nama Lengkap',
                          focusedBorderColor: Colors.transparent,
                          enabledBorderColor: Colors.transparent,
                          errorBorderColor: Colors.transparent,
                          focusedErrorBorderColor: Colors.transparent,
                          onChange: (text) {
                            print(text);
                            if (_formKey.currentState != null) {
                              _formKey.currentState!.validate();
                            }
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukkan nama terlebih dahulu';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 20),
                const SizedBox(height: 30),
                BlocListener<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (responseModel) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Nama berhasil diupdate'),
                            backgroundColor: Colors.greenAccent,
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OTPConfirmationPage(
                              phone: widget.phone,
                            ),
                          ),
                        );
                      },
                      error: (msg) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Gagal mengupdate nama $msg'),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                        print(msg);
                      },
                    );
                  },
                  child: BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(15),
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: _submitForm,
                              child: Text('Submit'),
                            ),
                          );
                        },
                        loading: () {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                    },
                  ),
                ),
                // SizedBox(
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       padding: const EdgeInsets.all(15),
                //       backgroundColor: Colors.black,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20),
                //       ),
                //     ),
                //     onPressed: () {
                //       if (_formKey.currentState!.validate()) {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => OTPConfirmationPage(),
                //           ),
                //         );
                //         _nameController.clear();
                //       }
                //     },
                //     child: Text(
                //       'Lanjut',
                //       style: CustomTextStyles.poppins(
                //         size: 18,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
