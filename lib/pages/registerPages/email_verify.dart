import 'package:flutter/material.dart';
import 'package:oepay/common/components/bottom_custom_bar.dart';
import 'package:oepay/common/components/buttons.dart';

class EmailPages extends StatefulWidget {
  const EmailPages({super.key});

  @override
  _EmailPagesState createState() => _EmailPagesState();
}

class _EmailPagesState extends State<EmailPages> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
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
                    const Text(
                      'Informasi!',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 51),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'Informasi ini digunakan untuk mengautentikasi',
                      style: TextStyle(
                        color: Colors.blueGrey.shade400,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'dan melindungi akun anda dengan lebih baik',
                      style: TextStyle(
                        color: Colors.blueGrey.shade400,
                      ),
                    ),
                    const SizedBox(height: 50),
                    TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Nama Lengkap',
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
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.blueGrey.shade100),
                        labelText: 'Email',
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ButtonCustomBar(),
                            ),
                          );
                        },
                        label: 'Selesai'),
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
