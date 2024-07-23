import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/otp.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController(text: '+62');

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  bool _agreeToTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Masukkan Nomor Telepon',
                      style: CustomTextStyles.verifikasiTitle,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'Gunakan nomor telepon untuk mendaftar',
                      style: CustomTextStyles.verifikasiDeskripsi,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'atau masuk ke akun OEPAY anda',
                      style: CustomTextStyles.verifikasiDeskripsi,
                    ),
                    const SizedBox(height: 50),
                    IntlPhoneField(
                      cursorHeight: 25,
                      showDropdownIcon: false,
                      // dropdownDecoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: Colors.blueGrey.shade100),
                      initialCountryCode: 'ID',
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Nomor Telepon',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      validator: (phone) {
                        if (phone == null || phone.number.isEmpty) {
                          return 'Masukkan nomor telepon yang valid';
                        }
                        if (phone.completeNumber.length < 10) {
                          return 'Nomor telepon terlalu pendek';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          backgroundColor: const Color(0xFFFED058),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                15), // Sesuaikan nilai sesuai keinginan
                          ),
                        ),
                        onPressed: _agreeToTerms
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                'Nomor telepon +6289384774 telah terdaftar!',
                                                style: CustomTextStyles
                                                    .verifikasiTitle,
                                                textAlign: TextAlign.center,
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                'Apakah anda ingin masuk?',
                                                style: CustomTextStyles
                                                    .verifikasiDeskripsi,
                                                textAlign: TextAlign.center,
                                              ),
                                              const SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  ButtonCustom.filled(
                                                      height: 40,
                                                      width: 130,
                                                      color: ColorName.light,
                                                      textColor:
                                                          ColorName.yellowColor,
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      label: 'Kembali'),
                                                  ButtonCustom.filled(
                                                      width: 130,
                                                      height: 40,
                                                      color:
                                                          ColorName.yellowColor,
                                                      textColor:
                                                          ColorName.black,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                const OtpPages(),
                                                          ),
                                                        );
                                                      },
                                                      label: 'Masuk')
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                  // Jika validasi berhasil, lakukan sesuatu seperti menyimpan data atau mengirim ke server
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //   const SnackBar(
                                  //       content: Text('Nomor telepon valid!')),
                                  // );
                                }
                              }
                            : null,
                        child: const Text(
                          'Lanjut',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListTile(
                      leading: Transform.scale(
                        scale: 1.1,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: const Color(0xFFFED058),
                          shape: const CircleBorder(),
                          value: _agreeToTerms,
                          onChanged: (bool? value) {
                            setState(() {
                              _agreeToTerms = value ?? false;
                            });
                          },
                        ),
                      ),
                      title: Wrap(
                        children: [
                          Text(
                            'Saya menyetujui dan telah membacas',
                            style: TextStyle(
                              color: Colors.blueGrey.shade400,
                              fontSize: 13,
                            ),
                          ),
                          const Text(
                            'syarat dan ketentuan penggunaan OEPAY',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xFFFED058)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
