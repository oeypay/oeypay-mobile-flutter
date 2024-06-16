import 'package:flutter/material.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';

class ResetPasword extends StatefulWidget {
  const ResetPasword({super.key});

  @override
  _ResetPaswordState createState() => _ResetPaswordState();
}

class _ResetPaswordState extends State<ResetPasword> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: ColorName.yellowColor,
        elevation: 0,
        title: const Text('Reset Password'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                });
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 25),
              Text(
                'Silakan isi dengan tepat informasi yang diberikan.',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                ),
              ),
              Text(
                'Kami akan mengirimkan email ke alamat',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                ),
              ),
              Text(
                'email yang Anda daftarkan untuk mendapatkan',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                ),
              ),
              Text(
                'kembali kata sandi Anda',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                ),
              ),
              const SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                  labelText: 'Email kamu',
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
                validator: (phone) {
                  return null;
                },
              ),
              const SizedBox(height: 30),
              Button.filled(
                  onPressed: () {
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
                                const Text(
                                  'Kirim email pengaturan ulang kata sandi',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Email telah dikirim ke alamat email pemulihan Anda. Ikuti petunjuk dalam email tersebut untuk mengatur ulang kata sandi Anda',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blueGrey.shade400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                ButtonCustom.filled(
                                    color: ColorName.yellowColor,
                                    textColor: ColorName.black,
                                    onPressed: () {},
                                    label: 'Ok'),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  label: 'Kirim'),
            ],
          ),
        ),
      ),
    );
  }
}
