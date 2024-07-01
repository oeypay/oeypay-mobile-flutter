import 'dart:ui';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepay/common/components/buttons.dart';
import 'package:oepay/common/constant/colors.dart';
import 'package:oepay/common/constant/styleText.dart';
import 'package:oepay/pages/HomePage/porfilScreen/Bantuan.dart';
import 'package:oepay/pages/HomePage/porfilScreen/Tentang.dart';
import 'package:oepay/pages/HomePage/porfilScreen/syaratKetentuanDetails.dart';
import 'package:oepay/pages/Settings/securityPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var colorIcons = const Color.fromARGB(255, 88, 66, 0);
    return Scaffold(
      backgroundColor: ColorName.light,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              height: 340,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                color: Color.fromARGB(255, 252, 220, 93),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.blueGrey,
                //     offset: const Offset(0, 3),
                //     blurRadius: 2,
                //     spreadRadius: 1,
                //   ),
                // ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => _showBottomSheet(context),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/images/Financialdata.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ahmad Kardawi',
                        style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          color: const Color.fromARGB(255, 0, 0, 51),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'ahmad@gmail.com',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color(0xff707070),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 30,
                        width: 130,
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code_2,
                              size: 20,
                            ),
                            SizedBox(width: 7),
                            Text('QR Code'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.light.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.security, color: colorIcons),
                          title: Text(
                            'Pengaturan Keamanan',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SecuritySettingsPage(),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.link,
                            color: colorIcons,
                          ),
                          title: Text(
                            'Akun Terhubung',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            // Navigate to linked accounts page
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.verified_user,
                            color: colorIcons,
                          ),
                          title: Text(
                            'Verifikasi',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            // Navigate to verification page
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.light.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.help,
                            color: colorIcons,
                          ),
                          title: Text(
                            'Pusat Bantuan',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PusatBantuan(),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        ListTile(
                          leading: Icon(Icons.info, color: colorIcons),
                          title: Text(
                            'Tentang OePay',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TentangOepay(),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.description_rounded,
                            color: colorIcons,
                          ),
                          title: Text(
                            'Syarat & Ketentuan',
                            style: CustomTextStyles.titleProfil,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Syaratketentuandetails(),
                              ),
                            );
                          },
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: colorIcons, size: 18),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: ColorName.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              const Text(
                'Ubah Profil',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/images/Financialdata.png'),
                ),
              ),
              const SizedBox(height: 10.0),
              CustomTextFormField(
                hintText: 'Masukkan Nama Baru',
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Masukkan Email Baru',
                prefixIcon: Icons.email_rounded,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Masukkan No Ponsel Baru',
                prefixIcon: Icons.phone_outlined,
              ),
              SizedBox(height: 20),
              ButtonCustom.filled(
                onPressed: () => AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Berhasil',
                  desc: 'Profil anda berhasil di ubah',
                  // btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show(),
                borderRadius: 50,
                label: 'Simpan',
                color: ColorName.yellowColor,
                textColor: Colors.white,
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

class CurvedContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100); // Titik awal
    path.quadraticBezierTo(size.width / 2, size.height + 50, size.width,
        size.height - 100); // Lengkungan yang simetris
    path.lineTo(size.width, 0); // Garis lurus ke kanan atas
    path.close(); // Tutup path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool isPassword;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  final bool readOnly;

  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      keyboardType: keyboardType,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: onSuffixIconPressed,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
