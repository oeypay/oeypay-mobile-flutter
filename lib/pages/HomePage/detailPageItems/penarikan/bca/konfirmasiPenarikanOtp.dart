import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/detailPageItems/penarikan/bca/penarikanTunaiBca.dart';
import 'package:pinput/pinput.dart';

class Konfirmasipenarikanotp extends StatefulWidget {
  final VoidCallback onConfirmation;

  const Konfirmasipenarikanotp({Key? key, required this.onConfirmation})
      : super(key: key);

  @override
  _KonfirmasipenarikanotpState createState() => _KonfirmasipenarikanotpState();
}

class _KonfirmasipenarikanotpState extends State<Konfirmasipenarikanotp> {
  final _pinController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
    );

    return Scaffold(
      backgroundColor: ColorName.yellowColor,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        title: Text('Masukkan PIN Kamu'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/icons/oeypay-favicon.svg',
                color: Colors.black,
                width: 85,
              ),
            ),
            SizedBox(height: 45),
            Text(
              'Lupa PIN?',
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins(
                size: 16,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Pinput(
              length: 6,
              controller: _pinController,
              focusNode: _focusNode,
              obscureText: true, // Menyembunyikan angka yang dimasukkan
              obscuringWidget: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ), // Ganti dengan warna latar belakang hitam
              ),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  color: Colors.black, // Latar belakang hitam setelah dikirim
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onCompleted: (pin) {
                print('PIN entered: $pin');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('PIN Berhasil di Buat'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 2), // Durasi tampilnya snackbar
                  ),
                );
                widget.onConfirmation();
                // Implementasikan logika validasi PIN di sini
              },
            ),
          ],
        ),
      ),
    );
    // List<int> _passwordDigits = [];
    // final List<int> _enteredDigits = [];
    // @override
    // void initState() {
    //   super.initState();
    //   _passwordDigits = [0, 3, 1, 6, 6, 0];
    // }

    // @override
    // Widget build(BuildContext context) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       leading: IconButton(
    //         icon: Icon(Icons.arrow_back),
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //       ),
    //       backgroundColor: ColorName.light,
    //       elevation: 0,
    //     ),
    //     backgroundColor: ColorName.light,
    //     body: Container(
    //       margin: EdgeInsets.only(top: 50, bottom: 50),
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           opacity: 0.3,
    //           fit: BoxFit.cover,
    //           image: AssetImage('assets/icons/log.png'),
    //         ),
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Masukkan Sandi Anda",
    //             style: TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           SizedBox(height: 20),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: List.generate(
    //               _enteredDigits.length,
    //               (index) => Container(
    //                 width: 40,
    //                 height: 40,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   color: Colors.grey[200],
    //                 ),
    //                 child: Center(
    //                   child: Text(
    //                     _enteredDigits[index].toString(),
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 20),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: List.generate(
    //               6 - _enteredDigits.length,
    //               (index) => GestureDetector(
    //                 onTap: () {
    //                   setState(() {
    //                     _enteredDigits
    //                         .add(_passwordDigits[index + _enteredDigits.length]);
    //                   });
    //                 },
    //                 child: Container(
    //                   width: 40,
    //                   height: 40,
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(10),
    //                     border: Border.all(
    //                       color: Colors.grey[400]!,
    //                       width: 1,
    //                     ),
    //                   ),
    //                   child: Center(
    //                     child: Text(
    //                       (index + _enteredDigits.length).toString(),
    //                       style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 30),
    //           ButtonCustom.filled(
    //             onPressed: () {
    //               widget.onConfirmation();
    //               // if (_enteredDigits.length == 6) {
    //               //   if (_enteredDigits.toString() == _passwordDigits.toString()) {
    //               //     // Navigate to the next screen or perform the desired action
    //               //     // if the password is correct.
    //               //     Navigator.push(
    //               //       context,
    //               //       MaterialPageRoute(
    //               //         builder: (context) => PenarikanTunaiBca(),
    //               //       ),
    //               //     );
    //               //   } else {
    //               //     // Show an error message or perform the desired action
    //               //     // if the password is incorrect.
    //               //     ScaffoldMessenger.of(context).showSnackBar(
    //               //       SnackBar(
    //               //         content: Text('Password incorrect'),
    //               //       ),
    //               //     );
    //               //   }
    //               // }
    //             },
    //             height: 40,
    //             label: 'Konfirmasi',
    //             color: ColorName.yellowColor,
    //             textColor: Colors.black,
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }
  }
}
