import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/register_pages/email_verify.dart';

class CreatPassword extends StatefulWidget {
  const CreatPassword({super.key});

  @override
  _CreatPasswordState createState() => _CreatPasswordState();
}

class _CreatPasswordState extends State<CreatPassword> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  final String _errorText = '';

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    super.dispose();
  }

  String? _validatePasswordMatch(String? value) {
    if (value != _passwordController.text) {
      return 'Password tidak cocok';
    }
    return null;
  }

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Buat Kata Sandi',
                      style: CustomTextStyles.verifikasiTitle,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'Buat kata sandi minimal 6 angka untuk',
                      style: CustomTextStyles.verifikasiDeskripsi,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'melindungi AKUN Anda',
                      style: CustomTextStyles.verifikasiDeskripsi,
                    ),
                    const SizedBox(height: 50),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          const ScaffoldMessenger(
                            child: Text('Please enter a password'),
                          );
                        }
                        return null;
                      },
                      // onChanged: (value) => _checkPassword(),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Masukkan Kata Sandi',
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
                      // validator: (phone) {
                      //   return null;
                      // },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      // onChanged: (value) => _checkPassword(),
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Ulangi Kata Sandi',
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
                      validator: _validatePasswordMatch,
                    ),
                    const SizedBox(height: 30),
                    Button.filled(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmailPages(),
                            ),
                          );
                        },
                        label: 'Masuk'),
                    // SizedBox(
                    //   width: double.infinity,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       padding: const EdgeInsets.all(15),
                    //       backgroundColor: const Color(0xFFFED058),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(
                    //             15), // Sesuaikan nilai sesuai keinginan
                    //       ),
                    //     ),
                    //     onPressed: () {
                    //       // Jika validasi berhasil, lakukan sesuatu seperti menyimpan data atau mengirim ke server
                    //       // ScaffoldMessenger.of(context).showSnackBar(
                    //       //   const SnackBar(
                    //       //       content: Text('Nomor telepon valid!')),
                    //       // );
                    //     },
                    //     child: const Text(
                    //       'Selesai',
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 18),
                    //     ),
                    //   ),
                    // ),
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
