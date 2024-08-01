import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/components/customTextField.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/regis_nama.dart';
import 'package:oepay/pages/registerPages/otp.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _undanganController = TextEditingController();
  String _errorMessage = '';

  @override
  void dispose() {
    _phoneController.dispose();
    _undanganController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => KonfirmasiNama(
            phone: _phoneController.text,
          ),
        ),
      );
      // _phoneController.clear();
      // _undanganController.clear();
    }
  }

  void handleError(String errorResponse) {
    final Map<String, dynamic> errorData = jsonDecode(errorResponse);
    final String errorMessage = errorData['message'] ?? 'An error occurred';

    setState(() {
      _errorMessage = errorMessage; // Update the error message
    });
  }

  // bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Registrasi / Masuk',
          style: CustomTextStyles.verifikasiTitle,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(
                //   'Masukkan Nomor Telepon',
                //   style: CustomTextStyles.verifikasiTitle,
                // ),

                SvgPicture.asset(
                  'assets/icons/oeypay-favicon.svg',
                  color: Colors.black,
                  width: 85,
                ),
                const SizedBox(height: 45),
                Container(
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        'assets/icons/hp.svg',
                        color: Colors.black54,
                        width: 15,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _phoneController,
                          labelText: 'Nomor Telephone / WhatsApp',
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
                              return 'Masukkan nomor telepon yang valid';
                            }
                            if (value.length < 10) {
                              return 'Nomor telepon terlalu pendek';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: ColorName.yellowSmoth,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      SvgPicture.asset(
                        'assets/icons/grub.svg',
                        color: Colors.black54,
                        width: 15,
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          controller: _undanganController,
                          labelText: 'Kode Undangan (Opsional)',
                          focusedBorderColor: Colors.transparent,
                          enabledBorderColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => _submitForm(),
                    child: Text(
                      'Lanjut',
                      style: CustomTextStyles.poppins(
                        size: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // ListTile(
                //   leading: Transform.scale(
                //     scale: 1.1,
                //     child: Checkbox(
                //       checkColor: Colors.white,
                //       activeColor: const Color(0xFFFED058),
                //       shape: const CircleBorder(),
                //       value: _agreeToTerms,
                //       onChanged: (bool? value) {
                //         setState(() {
                //           _agreeToTerms = value ?? false;
                //         });
                //       },
                //     ),
                //   ),
                //   title: Wrap(
                //     children: [
                //       Text(
                //         'Saya menyetujui dan telah membaca ',
                //         style: TextStyle(
                //           color: Colors.blueGrey.shade400,
                //           fontSize: 13,
                //         ),
                //       ),
                //       const Text(
                //         'syarat dan ketentuan penggunaan OEPAY',
                //         style:
                //             TextStyle(fontSize: 13, color: Color(0xFFFED058)),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
