import 'package:flutter/material.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/registerPages/createdPassword.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpPages extends StatefulWidget {
  const OtpPages({super.key});

  @override
  _OtpPagesState createState() => _OtpPagesState();
}

class _OtpPagesState extends State<OtpPages> {
  ///  Otp pin Controller
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              Text('Verifikasi Kode OTP',
                  style: CustomTextStyles.verifikasiTitle),
              const SizedBox(height: 20),
              Text(
                'Kode verifikasi telah dikirim',
                style: CustomTextStyles.verifikasiDeskripsi,
              ),
              const SizedBox(height: 5),
              Text(
                'ke nomor +6286576446',
                style: CustomTextStyles.verifikasiDeskripsi,
              ),
              const SizedBox(height: 20),
            ],
          ),
          OtpPinField(
            otpPinFieldInputType: OtpPinFieldInputType.none,
            key: _otpPinFieldController,
            textInputAction: TextInputAction.next,
            onSubmit: (text) {
              print('Entered pin is $text');
            },
            onChange: (text) {
              print('Enter on change pin is $text');
            },
            onCodeChanged: (code) {
              print('onCodeChanged  is $code');
            },
            otpPinFieldStyle: const OtpPinFieldStyle(
              activeFieldBackgroundColor: Colors.white,
              defaultFieldBackgroundColor: Colors.white,
              activeFieldBorderGradient:
                  LinearGradient(colors: [Colors.black, Colors.redAccent]),
              filledFieldBorderGradient:
                  LinearGradient(colors: [Colors.green, Colors.tealAccent]),
              defaultFieldBorderGradient:
                  LinearGradient(colors: [Colors.orange, Colors.brown]),
            ),
            maxLength: 4,
            showCursor: true,
            cursorColor: Colors.indigo,
            showDefaultKeyboard: true,
            mainAxisAlignment: MainAxisAlignment.center,
            otpPinFieldDecoration:
                OtpPinFieldDecoration.defaultPinBoxDecoration,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    _otpPinFieldController.currentState
                        ?.clearOtp(); // clear controller
                  },
                  child: const Text(
                    'Hapus',
                    style: TextStyle(color: Colors.amber),
                  )),
              const SizedBox(width: 30),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreatPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(color: Colors.white),
                  )),
              // const SizedBox(height: 30),
            ],
          ),
          const SizedBox(height: 30),
          // Container(
          //   padding:
          //       const EdgeInsets.only(left: 2, right: 2, top: 1, bottom: 1),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(7),
          //     color: Colors.white,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey
          //             .withOpacity(0.5), // Warna bayangan dengan opasitas
          //         spreadRadius: 2, // Penyebaran bayangan
          //         blurRadius: 10, // Keburaman bayangan
          //         offset: const Offset(0, 4), // Posisi bayangan (x, y)
          //       )
          //     ],
          //   ),
          //   child: const Text(
          //     'Ganti nomor telepon',
          //     style: TextStyle(
          //       color: Colors.amber,
          //       // fontSize: 17,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Belum menerima kode OTP?',
                            style: CustomTextStyles.verifikasiTitle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            'OEPAY akan menghubungi Anda di',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            '620987599 untuk mendapatkan kode OTP',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  // side: const BorderSide(color: Colors.amber),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Tutup',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                ),
                                onPressed: () {
                                  // Action for call button
                                },
                                child: const Text(
                                  'Panggil',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text(
              'kirim ulang kode otp',
              style: TextStyle(
                color: Colors.blueGrey.shade400,
              ),
            ),
          ),
          Container(
            height: 1,
            width: 145, // Adjust this width based on your text length
            color: Colors.blueGrey.shade400,
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // const Text(
                          //   'Belum menerima kode OTP?',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.black,
                          //   ),
                          //   textAlign: TextAlign.center,
                          // ),
                          // const SizedBox(height: 25),
                          const Text(
                            'Apakah Anda Yakin Ingin Mnedaftar',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Dengan Nomor Telepon Lain?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  // side: const BorderSide(color: Colors.amber),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Tutup',
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                ),
                                onPressed: () {
                                  // Action for call button
                                },
                                child: const Text(
                                  'Iya',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text(
              'Ganti nomor telepon',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                // fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            height: 1,
            width: 155, // Adjust this width based on your text length
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
