import 'package:flutter/material.dart';
import 'package:oepay/common/components/bottomCustomBar.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/pages/loginPages/reset_pass.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  _LoginPagesState createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final _formKey = GlobalKey<FormState>();
  final _passworController = TextEditingController();

  @override
  void dispose() {
    _passworController.dispose();
    super.dispose();
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password harus diisi';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // const Text(
                    //   'Selamat Datang !',
                    //   style: TextStyle(
                    //       fontSize: 20,
                    //       color: Color.fromARGB(255, 0, 0, 51),
                    //       fontWeight: FontWeight.w400),
                    // ),
                    Image.asset(
                      'assets/images/Welcome-cuate.png',
                      width: 250,
                    ),
                    const SizedBox(height: 10),
                    // const SizedBox(height: 50),
                    TextFormField(
                      obscureText: true,
                      controller: _passworController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Masukkan kata sandi',
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
                      validator: _validatePassword,
                    ),
                    // const SizedBox(height: 20),
                    const SizedBox(height: 30),
                    Button.filled(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ButtonCustomBar(),
                            ),
                          );
                          // Form is valid
                          // Proceed with the action, e.g., submit the form
                        }
                      },
                      label: 'Masuk',
                    ),
                    const SizedBox(height: 20),
                    // Button.filled(
                    //   onPressed: () {
                    //     showDialog(
                    //       context: context,
                    //       builder: (BuildContext context) {
                    //         return Dialog(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Column(
                    //               mainAxisSize: MainAxisSize.min,
                    //               crossAxisAlignment:
                    //                   CrossAxisAlignment.stretch,
                    //               children: [
                    //                 Image.asset(
                    //                   'assets/images/finger.png',
                    //                   color: ColorName.yellowColor,
                    //                   width: 15,
                    //                 ),
                    //                 const SizedBox(height: 5),
                    //                 const Text(
                    //                   'Gunakan Sidik Jari',
                    //                   style: TextStyle(
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.black,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 const Text(
                    //                   'Buka kunci OEPAY',
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     color: Colors.black87,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 const Text(
                    //                   'Menggunakan sidik jari',
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     color: Colors.black87,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const SizedBox(height: 20),
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceEvenly,
                    //                   children: [
                    //                     ButtonCustom.filled(
                    //                         color: ColorName.light,
                    //                         textColor: ColorName.yellowColor,
                    //                         onPressed: () {},
                    //                         label: 'Kemabali'),
                    //                     ButtonCustom.filled(
                    //                         color: ColorName.yellowColor,
                    //                         textColor: ColorName.black,
                    //                         onPressed: () {},
                    //                         label: 'Masuk')
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   label: 'Gunakan Sidik Jari',
                    //   icon: Image.asset(
                    //     'assets/images/finger.png',
                    //     color: Colors.black,
                    //     width: 30,
                    //   ),
                    // ),
                    // const SizedBox(height: 20),
                    // Button.filled(
                    //   onPressed: () {
                    //     showDialog(
                    //       context: context,
                    //       builder: (BuildContext context) {
                    //         return Dialog(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(20),
                    //           ),
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Column(
                    //               mainAxisSize: MainAxisSize.min,
                    //               crossAxisAlignment:
                    //                   CrossAxisAlignment.stretch,
                    //               children: [
                    //                 Image.asset(
                    //                   'assets/images/face.png',
                    //                   color: ColorName.yellowColor,
                    //                   width: 20,
                    //                 ),
                    //                 // Lottie.asset(
                    //                 //   'assets/images/telepon.json',
                    //                 //   filterQuality: FilterQuality.high,
                    //                 //   animate: true,
                    //                 //   width: 100,
                    //                 //   height: 100,
                    //                 //   // fit: BoxFit.fill,
                    //                 // ),
                    //                 const SizedBox(height: 5),
                    //                 const Text(
                    //                   'Gunakan Face ID',
                    //                   style: TextStyle(
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.black,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 const Text(
                    //                   'Buka Kunci OEPAY',
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     color: Colors.black87,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const Text(
                    //                   'Menggunakan Face ID',
                    //                   style: TextStyle(
                    //                     fontSize: 16,
                    //                     color: Colors.black87,
                    //                   ),
                    //                   textAlign: TextAlign.center,
                    //                 ),
                    //                 const SizedBox(height: 20),
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceEvenly,
                    //                   children: [
                    //                     ButtonCustom.filled(
                    //                         color: ColorName.light,
                    //                         textColor: ColorName.yellowColor,
                    //                         onPressed: () {},
                    //                         label: 'Kembali'),
                    //                     ButtonCustom.filled(
                    //                         color: ColorName.yellowColor,
                    //                         textColor: ColorName.black,
                    //                         onPressed: () {},
                    //                         label: 'Masuk')
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         );
                    //       },
                    //     );
                    //   },
                    //   label: 'Gunakan Face ID',
                    //   icon: Image.asset(
                    //     'assets/images/face.png',
                    //     color: Colors.black,
                    //     width: 30,
                    //   ),
                    // ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasword(),
                          ),
                        );
                      },
                      child: Text(
                        'Lupa kata sandi ?',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blueGrey.shade400,
                        ),
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
